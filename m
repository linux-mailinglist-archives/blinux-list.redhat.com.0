Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD3D4667AB
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 17:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638461547;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pgq9W2rVs9wsqLin8jjPaQEpwOgOttsNhrhekMqfWPQ=;
	b=gk8EPJdaff3TpWwRxyHaWdO1JE9cJgmtul50ba8IIPiznQBPxB7KiHddMIMWM55UovCl01
	PdBk4otkt0ObwN0UpJE0ZWw7BtyVHLjFLH8UFvMSP6ZwyVBJNlIO0mpe7dQKH4ayCk0sGV
	c4sLc+JfOCBUR+zG0pvY5HQev5bCsjU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-459-Cy045cOhPL6fdPYc_hFLDA-1; Thu, 02 Dec 2021 11:12:26 -0500
X-MC-Unique: Cy045cOhPL6fdPYc_hFLDA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 473BD1023F4E;
	Thu,  2 Dec 2021 16:12:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 21C3810023B8;
	Thu,  2 Dec 2021 16:12:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 111ED1802FE8;
	Thu,  2 Dec 2021 16:12:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B2GBupq007518 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 11:11:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2E9042166B3F; Thu,  2 Dec 2021 16:11:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28BDF2166B26
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 16:11:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0BAF8811E76
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 16:11:53 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-242-Amtca8pZP3uahWAS48w6cw-1; Thu, 02 Dec 2021 11:11:51 -0500
X-MC-Unique: Amtca8pZP3uahWAS48w6cw-1
Received: by mail-wr1-f44.google.com with SMTP id s13so60767482wrb.3
	for <blinux-list@redhat.com>; Thu, 02 Dec 2021 08:11:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:disposition-notification-to
	:content-transfer-encoding;
	bh=XfgEcocNHgu59sIDeh+HXnv6f5RTt62GF8soJaMZGE4=;
	b=32zfjjbDURJoPh7Ok6emLPBR7tpNHC6wQG12Sxcf0+AQo/PpZMPvtRThjywMOl93FJ
	cz7gAN5v+Gqhmpkzcxd1YPzpQShOdyigVG0lAJrnVUWeFtEQXgzG7wbPL9zj5T8OL7Ck
	65VamrhhHGjvmAaf8ltjzS1ltQ9SIaQBjMAWGeCW2h5fRMyAXym7A4KQ4E2j0qPZHhE6
	SGTDrZDfqYPSnzb350lBykG+FHkMwzEv7HYlehCbD2RA1qN9jvbR3Qqpjw5KyBqqt585
	pCvSHJuTBetFYM5GeOAjGKrqy2PFTcSD1mfL2x6Ua546vko15fOTGbBy7c6DYZMjU5DF
	feuw==
X-Gm-Message-State: AOAM533cgcrvmkzF11gmG5zd+/9W9EZEL937MFu5C0HUHyW80O8XWCo4
	6yAFIkzg1jnC9oEb/D2b3d94nCN/bvc=
X-Google-Smtp-Source: ABdhPJwpAUDlbKlbo1OwDFsidJIveu8eNxI37+qNJJ3uEf8yGdJx4nNpjU8CyN3t5S+36YFq0DQppA==
X-Received: by 2002:adf:bbc2:: with SMTP id z2mr15130473wrg.582.1638461509972; 
	Thu, 02 Dec 2021 08:11:49 -0800 (PST)
Received: from [192.168.8.130] ([197.184.182.55])
	by smtp.gmail.com with ESMTPSA id o12sm329084wrc.85.2021.12.02.08.11.48
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 02 Dec 2021 08:11:49 -0800 (PST)
Message-ID: <d94f386f-eb7b-3f22-9f91-ec14738df1fb@gmail.com>
Date: Thu, 2 Dec 2021 18:11:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Running my qemu VM in Virtual Machine Manager in Fedora
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


Ok, I imported my previous Qemu VM in to 'Virtual Machine Manager' in 
Fedora, and it comes up speaking.


I now have 2 issues.


1: I cannot seem to grab the keyboard without using the Mouse on the 
"drawing area". Alt+ctrl+g doesn't seem to do the job.

2: I cannot recall how to make orca not respond in a particular window. 
I need to do this to make NVDA or Jaws function with the number pad on 
the keyboard.


If anyone can help with this, I would really appreciate it. I really 
need this Windows to work to do my job, and I really, really don't want 
to live in Windows if I don't have to.

-- 
Warm regards,

Brandt Steenkamp

Sent from the Fedora machine, using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

