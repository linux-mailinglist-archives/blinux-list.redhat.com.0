Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3E352A7AA
	for <lists+blinux-list@lfdr.de>; Tue, 17 May 2022 18:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1652803816;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xLD5bGX3UwqYKG1H6s0sOFAJhaL0WDcDc/JzyrDX1RE=;
	b=Ih5GlbA71Hcy2qFhvI1azkGYB64Dr09x2DFNjIgC1lkd3fQldpuITVC/MOl5eMtryYDXGa
	n9JAxcoLhZXha2DFn0VhGNe2GiaLJB1Ltm/GfJFzO5bGFVdsOlj7OTSB3bNCnz4Jgl9isX
	6Gl4ZAhaRpQ3Ybhmy/Z2jdspVWQe/3g=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-WI-dPIfbNeSgEics6afcNQ-1; Tue, 17 May 2022 12:10:13 -0400
X-MC-Unique: WI-dPIfbNeSgEics6afcNQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 52A3985A5A8;
	Tue, 17 May 2022 16:10:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 38C9640CF8F0;
	Tue, 17 May 2022 16:10:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0564A19259F2;
	Tue, 17 May 2022 16:10:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 17 May 2022 10:49:08 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: two computers
In-Reply-To: <mailman.15787.1652800448.111201.blinux-list@redhat.com>
References: <mailman.15787.1652800448.111201.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.15704.1652803808.111210.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I'll provide a few aspects you might want to compare:

- Disk space:  to ignore the sizes of individual partitions and check
  the total disk-space of each of your drives, you should be able to
  use

  $ sudo fdisk -l | grep 'Disk /'

- Disk type:  it might be a slower rotating drive or a faster
  SSD/NVMe drive, so to check that:

  $ lsblk -io name,rota | grep '^\<'

  If the 2nd "ROTA" value is a "1", it's a slower spinning disk,
  while if it's a "0", the drive is a faster SSD/NVMe drive.

- RAM: use

  $ free -h

  or for just the numeric value without swap and usage information

  $ free -h | awk 'NR==2{print $2}'

- CPU: this one is trickier to compare because one might have more
  cores that are slower while the other one has fewer cores running
  at a higher clock-speed.  For just the CPU count, you can use

  $ fgrep -c "model name" /proc/cpuinfo

  whereas if you want the details on processor-speed (which can
  differ by CPU) in addition to the processor count, you can use

  $ awk 'END{print c, "total"}/model name/ && ++c' /proc/cpuinfo

That still doesn't take into consideration things like

- system weight (I remember the old days of 10-pound laptops and even
  45-pound luggables)

- the keyboard feel/layout (some are spongy-feeling with short
  travel, some laptops have atrocious layouts for things like
  arrow-keys, function keys, etc)

- battery life

but hopefully it provides enough numbers to let you compare them
and determine which will better meet your needs.

Hopefully this helps,

-Tim



On May 17, 2022, Linux for blind general discussion wrote:
> I have an old laptop running Fedora.
> My sister is giving me an old laptop she no longer needs.
> It has windows on it now.
> I will put linux on to it.
> How may I find which machine has better memory, disk space, and all
> that?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

