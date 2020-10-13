Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 45B6428C876
	for <lists+blinux-list@lfdr.de>; Tue, 13 Oct 2020 08:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602569091;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DZY3XvyjOPD40tJQifI1NUohlfQ3O+c6hj26+pnnpKw=;
	b=QRt657fCVx0nM+DnKt/NFx1xZ1+Fsp3QT9F1ZKy2ItT+uxI38ufXkctoP8W3LMa49OcUur
	O4PgR/Imev1Dk7+XnlLfAlfaD9LYVRE9n02fz6wd+eg0+bfo1QDUnFvOH8j4p76LhRyqYw
	0y1BcMSLz24FmBmwbv6iDLNjhDs93VQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-438-cLQuSsOPMVe92K2SiAWW_w-1; Tue, 13 Oct 2020 02:04:48 -0400
X-MC-Unique: cLQuSsOPMVe92K2SiAWW_w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5114780ED9A;
	Tue, 13 Oct 2020 06:04:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 503D775132;
	Tue, 13 Oct 2020 06:04:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7F09444A66;
	Tue, 13 Oct 2020 06:04:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09D64QuP017271 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 13 Oct 2020 02:04:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5EC0F2DFC65; Tue, 13 Oct 2020 06:04:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58C882DF7C9
	for <blinux-list@redhat.com>; Tue, 13 Oct 2020 06:04:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C70A2182360B
	for <blinux-list@redhat.com>; Tue, 13 Oct 2020 06:04:23 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.86.150])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-204-d9LC3D57PP2TI725qzm7XQ-1; Tue, 13 Oct 2020 02:04:20 -0400
X-MC-Unique: d9LC3D57PP2TI725qzm7XQ-1
X-SimpleLogin-Client-IP: 127.0.0.1
Received: from [172.17.0.10] (localhost [127.0.0.1])
	by mx1.simplelogin.co (Postfix) with ESMTP id 189C83F237
	for <blinux-list@redhat.com>; Tue, 13 Oct 2020 06:04:18 +0000 (UTC)
Date: Tue, 13 Oct 2020 08:04:15 +0200 (CEST)
Subject: Any experiences with Linux Mint and MATE?
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <160256905889.6.4331994417748136253.1268863@slmail.me>
X-SimpleLogin-EmailLog-ID: 1268863
X-SimpleLogin-Type: Reply
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi everyone,
I've been trying to install Slint on my HP laptop and encountering various errors.
I made an appointment in a couple of days, with a local computer shop where some of the technicians work with Linux so they are going to try to help me figure out what is going on. 
Most likely it is just some mistakes that I'm making as a beginner, that is the most likely possibility.
But there is a chance that perhaps Slint just might not be compatible with my particular model of laptop. Its an HP, and I know that some people use Slint on HPs and it works just fine for them. So its probably just user error on my part as a beginner. But it might also be incompatible with my particular hardware. I don't know yet. We'll see.
If it doesn't work out on the HP, then I will try installing Slint on a Dell.
I've explored Slint on a live bootable disk and I really like it, so I am determined to learn it. I just don't know yet if it will install properly on my particular model of HP, or if I will need to install it on the Dell instead. Either way, I am looking forward to learning my way around Slint once I get it installed on either one of those computers.
But just in case Slint might not work out on the HP and I end up installing it on the Dell instead, I would like to have a choice of an alternative Distro to try installing on the HP. I want to walk into the shop with a backup alternative Distro installation disk in hand, so that if Slint doesn't work out for the HP and I end up putting it on the Dell, we could still attempt to install a different Distro on the HP while I'm there in the shop with the technicians. 
I'm considering a mainstream Distro as a secondary option for the HP. 
Ubuntu is apparently quite easy to use, but it also has a reputation for collecting more telemetry than other Distros. I don't know if this is still true, or if Ubuntu has improved in recent times.
So I was thinking maybe Linux Mint with MATE? Apparently Linux Mint is based on Ubuntu, but without the telemetry. Do any of you have experience with Linux Mint with MATE?
Somewhere I read about a blind guy who was using Linux Mint with MATE as the GUI. I think he said that Cinnamon had accessibility issues. But I think he had success with MATE. 
Do any of you use Linux Mint?
If so, is there a way to get it to speak during install? Like press S or something?
If any of you are using Mint successfully and could paste a direct link to an accessible installation version, or perhaps instructions as to how to activate accessibility on a regular install, that would be awesome.
Suggestions for other beginner friendly Distros are welcome. 
I look forward to meeting with the technicians in a couple of days and hopefully we can get Slint up and running on the HP. If not, I'll be trying it on the Dell. But as for the HP, I'd like to come prepared with an alternative option of Distro, just in case. 
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

