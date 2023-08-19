Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5D97817AD
	for <lists+blinux-list@lfdr.de>; Sat, 19 Aug 2023 08:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692426708;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GbbFd9IZP5TS3MqGXov1NsmghUIQXsiBFfdAR5zjpOA=;
	b=C7H2//NfiaHZCGsghIWtnqmSs3WgB+k6SBsK/aNrq+Iph5wMzWvF8ouG7QNhUqnGjX/xRy
	EZztogZceeVkNbUWn+PB0rxPQXvKEqifBLZJYZb9QBWNNq00mEKa15Px3ogD9v/pinN6Nl
	ifCcD2ctfhb8Iv0/xxOctoT5TR7tuRo=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-130-Dk8RNvMWM6qBL7wjuWa15Q-1; Sat, 19 Aug 2023 02:31:35 -0400
X-MC-Unique: Dk8RNvMWM6qBL7wjuWa15Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C8FF381181E;
	Sat, 19 Aug 2023 06:31:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 269DC140E96E;
	Sat, 19 Aug 2023 06:31:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3293D194658F;
	Sat, 19 Aug 2023 06:31:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 19 Aug 2023 08:30:58 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to have Orca in LightDM?
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1754.1692407072.2238099.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.1754.1692407072.2238099.blinux-list@redhat.com>
User-Agent: Mutt/2.2.10 (2023-03-25)
Message-ID: <mailman.14.1692426687.492710.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi

I advise setting the lightdm configurations in
/etc/lightdm/lightdm-gtk-greeter.conf instead. Make sure you have the
following two lines under the [greeter] section to have orca start automatically at login screen:

[greeter]
a11y-states=+reader
reader=orca

I think that will do.






On Fri, Aug 18, 2023 at 10:04:17PM -0300, Linux for blind general discussion wrote:
>Hi, according to the Gentoo wiki page for LightDM, it scans and 
>executes the contents of ~/xprofile on start, so I've put some 
>accessility related variables and the orca command in it, but orca is 
>not being brought up; it only comes after login, when Mate starts. How 
>can I have speech during login? The content of my ~/xprofile is as 
>follows:
>
># Accessibility variables
>export ACCESSIBILITY_ENABLED=1
>export GTK_MODULES=gail:atk-bridge
>export GNOME_ACCESSIBILITY=1
>export QT_ACCESSIBILITY=1
>export QT_LINUX_ACCESSIBILITY_ALWAYS_ON=1
>export SAL_USE_VCLPLUGIN=gtk3
>orca
>
>Thanks,
>Cleverson
>
>_______________________________________________
>Blinux-list mailing list
>Blinux-list@redhat.com
>https://listman.redhat.com/mailman/listinfo/blinux-list
>

-- 
Ishe

Chinyoka Educational Foundation
Website: https://www.chinyoka.com
Twitter: @IsheChinyoka

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

