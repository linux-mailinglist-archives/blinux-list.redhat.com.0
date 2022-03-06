Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 963EC4CECA8
	for <lists+blinux-list@lfdr.de>; Sun,  6 Mar 2022 18:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646588794;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vqJ+o+gtUGhJ7SQf56tsWmzSmRmNPmdvlR3KEQuZpn8=;
	b=KUNfaOcFqQHbBHOYRUqR3VGIXPQPA0kMZcJXVPvH5H/EKoSX4X6gsC1ZvdaRAytjNY2VkO
	SRKZnE30brlAkkvpK661J8jEVmhaGX6jicdzOPJ2o9sARfV+99Do3Gng2mclqGxHcVQOho
	+jKjZ213ObHfFApu/KSMFU3deWBR3lo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-672-ESVGStV3MsOt-o7QN0iv2A-1; Sun, 06 Mar 2022 12:46:31 -0500
X-MC-Unique: ESVGStV3MsOt-o7QN0iv2A-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B77A3185A7BA;
	Sun,  6 Mar 2022 17:46:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 50338492C14;
	Sun,  6 Mar 2022 17:46:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4D8C81931BD1;
	Sun,  6 Mar 2022 17:46:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 6 Mar 2022 09:46:20 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is Their a Later Version of Speechd-up?
In-Reply-To: <mailman.14.1646588250.111205.blinux-list@redhat.com>
References: <mailman.9.1646583072.111206.blinux-list@redhat.com>
 <mailman.14.1646588250.111205.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.10.1646588785.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Didier, will try your link, but meanwhile here are errors
Setting up speechd-up (0.5~20110719-11) ...
Job for speechd-up.service failed because the control process exited with error 
code.
See "systemctl status speechd-up.service" and "journalctl -xeu 
speechd-up.service" for details.
invoke-rc.d: initscript speechd-up, action "restart" failed.
x speechd-up.service - LSB: Interface between speakup and speech-dispatcher
      Loaded: loaded (/etc/init.d/speechd-up; generated)
      Active: failed (Result: exit-code) since Sun 2022-03-06 09:44:07 PST; 48ms 
ago
        Docs: man:systemd-sysv-generator(8)
     Process: 2903814 ExecStart=/etc/init.d/speechd-up start (code=exited, 
status=1/FAILURE)
         CPU: 27ms

Mar 06 09:44:05 chime speechd-up[2903814]: Starting Interface between speakup 
and speech-dispatcher : speechd-up
Mar 06 09:44:05 chime speechd-up[2903819]: [Sun Mar  6 09:44:05 2022] speechd: 
Configuration has been read from "/etc/speechd-up.conf"
Mar 06 09:44:05 chime speechd-up[2903814]: Starting speechd-up...
Mar 06 09:44:05 chime speechd-up[2903814]: To work, speechd-up needs speakup 
and speakup_soft modules.
Mar 06 09:44:05 chime speechd-up[2903814]: They are loaded automatically. If 
you don't want, type
Mar 06 09:44:05 chime speechd-up[2903814]: rmmod speakup speakup_soft
Mar 06 09:44:07 chime speechd-up[2903931]:  failed!
Mar 06 09:44:07 chime systemd[1]: speechd-up.service: Control process exited, 
code=exited, status=1/FAILURE
Mar 06 09:44:07 chime systemd[1]: speechd-up.service: Failed with result 
'exit-code'.
Mar 06 09:44:07 chime systemd[1]: Failed to start LSB: Interface between 
speakup and speech-dispatcher.
dpkg: error processing package speechd-up (--configure):
  installed speechd-up package post-installation script subprocess returned 
error exit status 1
Errors were encountered while processing:
  speechd-up
E: Sub-process /usr/bin/dpkg returned an error code (1)
Thanks in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

