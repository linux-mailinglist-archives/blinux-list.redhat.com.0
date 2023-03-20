Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D3B6C1FB8
	for <lists+blinux-list@lfdr.de>; Mon, 20 Mar 2023 19:32:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679337168;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=C6Sgio0Wph0GKQ6SeB+0ho9XYjDi9lagmAysHzEF/wc=;
	b=CrhPknNoxi4GCCCHxdmPd5LSiNCJRC+jeIt+IjOjCCy6LE9Fu7E9HOr63+LBTeuv64sWB7
	snxA688e5l908cbFZBZEwrgJ3B1kvvW6AuY+v4s3d8/1BDZG2YRseVfmV9aaT3SFADYOwB
	LkuvX9AAX9rPFW4RHcitJxGq4jAI4a4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-46-cNQfvhufPAKa-Y1WQtzbRA-1; Mon, 20 Mar 2023 14:32:45 -0400
X-MC-Unique: cNQfvhufPAKa-Y1WQtzbRA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8923F101A54F;
	Mon, 20 Mar 2023 18:32:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 439E6C2121;
	Mon, 20 Mar 2023 18:32:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8477A19465B3;
	Mon, 20 Mar 2023 18:32:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: Blanking out screen on Ubuntu Mate
Date: Mon, 20 Mar 2023 13:32:04 -0500
References: <mailman.399.1679323586.636365.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.399.1679323586.636365.blinux-list@redhat.com>
Message-ID: <mailman.465.1679337140.636363.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Curious, had you any trouble starting orca during installation?
I had trouble with ubuntu mate 20.04.

> On Mar 20, 2023, at 09:46, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hello,
> 
> 
> I am running Ubuntu Mate 22.04 on my Star Labs Starbook, and would like to black out the display while I am using the machine for privacy.
> 
> 
> Due to Ubuntu Mate's auto brightness settings, the script I had made previously to do this on arch, which would write to the /sys/class/backlight/intel_backlight/brightness file no longer works.
> 
> 
> Does anyone have a way of doing this on Ubuntu Mate?
> 
> 
> Thanks,
> 
> Aaron.
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

