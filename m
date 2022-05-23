Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E45CF5311B4
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 17:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653321128;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UdPAJy0R4vjImq4Egy7qTL69kbFqcYeLkjT7020crfw=;
	b=KeUCvVsHKYH28a7dCfGZPqpFRr9vkIidEmgnQ0Xz+8v9s4+6tw6Dsp1nMz2JL4C7Agr/zf
	SvDOZkIs93qzwSOuLL51anKlVC+45iMj79nPuHfAuWcmRI/iiVNLD1e4fY08Bsk0POBl31
	+db4DtsMCCjSCh9zZOOIYQDZ83ZKOBU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-57-ZFvXKwqzN6eMCPsqMdFvDg-1; Mon, 23 May 2022 11:52:05 -0400
X-MC-Unique: ZFvXKwqzN6eMCPsqMdFvDg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D4DB1C0F685;
	Mon, 23 May 2022 15:52:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D6C482166B25;
	Mon, 23 May 2022 15:52:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2CEB9194705F;
	Mon, 23 May 2022 15:52:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 23 May 2022 17:51:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: I'm in crisis, help!!!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
 <mailman.17518.1653310063.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.17518.1653310063.111208.blinux-list@redhat.com>
Message-ID: <mailman.17273.1653321119.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'll redownload Fedora and see if it works.

I'd prefer vanilla Fedora with Gnome, since that's the way the Gnome 
devs intended Gnome, as well as the fact that Fedora with Gnome is the 
flagship.

Warm regards,

Brandt Steenkamp

Sent using Thunderbird on the Linux box.

On 2022/05/23 14:47, Linux for blind general discussion wrote:
> I just tried Fedora Workstation 36, and found that the installer in 
> fact is not speaking. However, it does speak using the 
> Fedora-MATE-Compiz spin. I know I just saw an update to the anaconda 
> stuff I believe about 2 or 3 days ago that may have fixed it for 
> everyone, but I am certain that the installer is talking on the MATE 
> spin I downloaded about 15 minutes ago. Your biggest issue will be a 
> pitch problem with speech-dispatcher's defaults that make things sound 
> really high at times. But this is fixed, at least in Orca with 
> Fedora-MATE-Compiz 36, by changing the speech synthesizer in the voice 
> tab from "default speech synthesizer" to espeak-ng. Also, your 
> alt+super+s keyboard shortcut to turn on Orca is disabled by default 
> in MATE, so you will want to press alt+f2 and enter orca in the run 
> window. Hope this helps.
>
> ~Kyle
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

