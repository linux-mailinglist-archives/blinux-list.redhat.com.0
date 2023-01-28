Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 705A267F3C6
	for <lists+blinux-list@lfdr.de>; Sat, 28 Jan 2023 02:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674869910;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CRn16JaRYUHmK5wmLOHOoWd+8tyToADcd0OfYmV2w98=;
	b=iB8Gn41hAzOTu1V0ClKSr1surY12PHalg6K+e7vWYoTuNnrisSsexLkhHaNZG5BYoreGkY
	LQGonGNgl61WDDm2Pcy7i6ms7RKxQe3KGlqnyAt/mltqxqlot+8aNEFPvLs/3rv8yeMYh9
	EL96zihG/z5m9nylSJOF3r8GTIbOVBo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-49-RpokRSrJMTOCa2LmKbtyOA-1; Fri, 27 Jan 2023 20:38:20 -0500
X-MC-Unique: RpokRSrJMTOCa2LmKbtyOA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97B63101A52E;
	Sat, 28 Jan 2023 01:38:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E1D0B7AD4;
	Sat, 28 Jan 2023 01:38:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5D0EE19465A2;
	Sat, 28 Jan 2023 01:38:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 27 Jan 2023 20:38:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Twitter alternatives for the blind community?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2126.1674833824.8175.blinux-list@redhat.com>
 <mailman.2028.1674835913.8171.blinux-list@redhat.com>
 <mailman.2120.1674865746.8168.blinux-list@redhat.com>
 <mailman.2121.1674866317.8168.blinux-list@redhat.com>
In-Reply-To: <mailman.2121.1674866317.8168.blinux-list@redhat.com>
Message-ID: <mailman.2017.1674869893.8172.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

According to Rich Morin:

I'm delighted to hear that Pleroma is working on improving a11y. I'm 
already a big fan of the Elixir language (which Pleroma is based on), so 
that's a double win for me...


Pleroma also runs their own Gitlab instead of relying on Microsoft to 
host their code, which is another win for me, especially since this 
actually allows me to report any issues and even contribute to the code 
if I can learn the language. I'm not a huge fan of Gitlab, but it sure 
beats having to give personal information to Microsoft just to report a bug.


I'm not necessarily a huge fan of Postgres, but I don't much like 
MariaDB for anything other than its ubiquity either. So I just may take 
a closer look at Pleroma, and since I have only about 5 approved users 
on my Friendica server, informing them of the change shouldn't be too 
difficult, and I may be able to switch over myself.


For now, Twitter is kinda stop and go on my Friendica, and there are a 
few accounts that I still follow, mostly businesses and brands I 
purchase, but other things as well, so I do want to keep it running as 
long as it mostly works. As soon as it stops working for good though, 
and it will at some point certainly, Pleroma looks like a clear winner.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

