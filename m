Return-Path: <blinux-list+bncBDGI3AUYYYCBB46N726AMGQEACKCOJI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DDCA24F14
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2025 18:10:13 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d88ccf14aesf64718426d6.1
        for <lists+blinux-list@lfdr.de>; Sun, 02 Feb 2025 09:10:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738516212; cv=pass;
        d=google.com; s=arc-20240605;
        b=Lw40v5FdNBM42cs/r7SS5T5yiWJ4ZFSNJrXd9zPQkQWKRGdij5Q/7c8YlguMYpEVTx
         uhQ+gN/FOkQfG/kUoGu2mMOz2pcuOrnBdJvxkBc0XojFVf6m1wkyM1ZfNyr/XmcavK8b
         KYX7IcCWkJSCK6TKqwngaztD5RiTTka0rwhaOsIGzLKnMzQ2EGfp8MDXweVMOmgIpMlY
         JmMJckDsrYWZFQIMKYDjgqBMjZDY5WLTG1k1A6IMdGAqBuNCoI0dbn50mk2zp+OJR1Tw
         SRoufdhVUFSln9Zg0eHqniSI8GkMZGMa+IpaoXyJ9UcGCepgqcURqLl195gmU8oagkX1
         Hj3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=C1UC2hJYlMKOQVYdyvXN17UFt0JdpB6/HSU7jubdWK0=;
        fh=+aNdN8Wt+YNHBh2Lac/JTb1hsgbTONEZ/MTIn/48u5o=;
        b=Pnvr2+TfAG0amkgb6nETXEq66mmmuW3yT+ouL42jTtKipica2d9SvHo5mgWt+nK4mJ
         /f5VTFPEOVM82kdJ57AgrUXe7xn0D5ICkKMbh0EU7jP1NJ55H0bJzUje67Wx0XFqP15Y
         9PUGEh+75Uqpw1Y9UeVb0k4Q828wai7KEKO519q3QC3DSafUmuDq+KNC9Q9rx5Jgs+UQ
         o2YbNsvnBB/0H7Uaf3pMJiReMpaWeMK19lHWGnYbgY0RT6LxKk4bGl1gyNT934ro8nVr
         41Qrjyf+hJaDp1d7iT9kO+QCPq1mmSnzZxKnaeU+eD+BLEkTUv8nzpCpLR0IntWxKxTp
         opbQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738516212; x=1739121012;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C1UC2hJYlMKOQVYdyvXN17UFt0JdpB6/HSU7jubdWK0=;
        b=J/vbxG5PXdJBRjbKo/Dg3BFwHZh6Bqq/hpCyWkS6R8iN2J8j2KYXAci74Lb1FSpcnb
         L5vB9s4jRgeVP8zt32/hb/c6P9VVlBOzcIDR7jsHeCQihSwBwSlbAi62tzSaO9bwSUuq
         FeY6DjFg4y6PUoDjTuTGFKbMmNlfGobqO8/hPEJH4zTbKNOtdaAf8YmZBKKhW0IN5OSV
         Sba0rhZgoia16QaTohq9hPBQiyF8b/Zj56SEQtqT3SBPzWfYZuFRBtdLu3VsrdPKIAhI
         SLi1xogWWNYFPJZubQW/03bsjevJWalbhK3RKsV1oG+jR6vWYEXznoo8kV21vTBqyIed
         /r+w==
X-Forwarded-Encrypted: i=2; AJvYcCWi+A8C3H0fyZOUbyHICwelydIyUD1mRT1qVsNzR43GcS6XuEQ7Vc5eoeSXo/SRTgAp78AH1w==@lfdr.de
X-Gm-Message-State: AOJu0YxC3IPCo/lI0ET2XMi6d15tbW2oR7vP6aGXD5HdYezJwSqtK8mc
	NP3qOswGaM5pJOiBxcVMZTtatu+/Bdl485wErnVvXPQyCQnLEp41JHLo4uRRsYQ=
X-Google-Smtp-Source: AGHT+IEY10DUGkdj7Wkhs9P90F5vawNUv5qwQuaBCPBN6mG2OnPL2Ayf15pJtURSeU+G25hbFaIbZg==
X-Received: by 2002:a05:6214:29ee:b0:6df:97a3:5e76 with SMTP id 6a1803df08f44-6e243c2293amr267390466d6.27.1738516211780;
        Sun, 02 Feb 2025 09:10:11 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:9e8a:0:b0:6cb:d4f7:64e0 with SMTP id 6a1803df08f44-6e251ec29f0ls18424596d6.2.-pod-prod-09-us;
 Sun, 02 Feb 2025 09:10:10 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXkc7vXFFHTWNmxZQ6qyhrhyk/E6IBj2iFRhvDAZfpZhNydgD1TEmpBQqT5nQ0gjdjvpZvQvrz10ngtTQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:44cd:b0:7b6:6a76:3a44 with SMTP id af79cd13be357-7bffcce562dmr2566401385a.17.1738516210556;
        Sun, 02 Feb 2025 09:10:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738516210; cv=none;
        d=google.com; s=arc-20240605;
        b=cARZSt/hNZEoSe42olapeF3/G8wFEfXex9vnFlfXBADJLSgj5ebzLd55SkMdOie7T3
         o61rUulPyLwWNA+8TODbQrmRaT0h3YuamE7r7d+Mn9qhS20G/nerYxm2qnmlr/MFtFyb
         T2iReUr5RHqxatSBCTjlXuSiaOCYGXmbHcUhg7DTKz/xx4niZHvxeApXo1HItgtG2VHj
         FqWXoScC6GO3GW402PdCZ6TVARssHuUV5csKYuOaqH9fYTuLoU9lcWe/5q60eNssOzzy
         uKtzXc1y8KqMYrrEytFHYdEIzh23wtkHMC3gTzUJjFuyBzZriSQEhK/OJHeNtvlQwZ8v
         8ToQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=pXkZNd8dM/TwKfxvBblDiAosBDMGc0q4mBDVVSzs7Rw=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=LwwqEBszdxR7QSZrK6HNRKxPFQf/wen2rHHq4Q3dZDs137AmUDcCCM+lZGPmwaQADC
         ivp7ujlAGgRY/SpxxcCQgC9esrixF8iTGDob42rFOIFMTCFrevk7mFoZHtgSveeERDv+
         HuPujgPXl1hbXdMzUCbpvd1EXaoFle1oMoODy3o1WdHeGsv5+DFDNpjo/0qILnL++hHH
         cpVY8fTw2cD1fyr1PkVW1of7IOZ62RTYAKSHL/RpUMRdxg3sTOYB/kd6SRnM56l+Wg5c
         TLMijWkuVLmPVRTyJkXCKYSF9mHMDpUtOuGlk5yUYel8ApRpWdBJQ1fIjhI5y7PZow4h
         WTpg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7c00a8d6803si801589585a.170.2025.02.02.09.10.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 09:10:10 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-663-Ch4gBgTKOhqYIMgOqVtgXQ-1; Sun,
 02 Feb 2025 12:10:09 -0500
X-MC-Unique: Ch4gBgTKOhqYIMgOqVtgXQ-1
X-Mimecast-MFC-AGG-ID: Ch4gBgTKOhqYIMgOqVtgXQ
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6F0FC195608A
	for <blinux-list@gapps.redhat.com>; Sun,  2 Feb 2025 17:10:08 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 53B61195E3E0; Sun,  2 Feb 2025 17:10:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 512101956094
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 17:10:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D639D19560B0
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 17:10:07 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-527-zNKJNLbqMpOyYh7GHBYMTA-1; Sun,
 02 Feb 2025 12:10:05 -0500
X-MC-Unique: zNKJNLbqMpOyYh7GHBYMTA-1
X-Mimecast-MFC-AGG-ID: zNKJNLbqMpOyYh7GHBYMTA
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YmGMx1Fzmz4LYL
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 12:10:05 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4YmGMx11kDzfYm; Sun,  2 Feb 2025 12:10:05 -0500 (EST)
Date: Sun, 2 Feb 2025 12:10:05 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: firefox - filling out a form
Message-ID: <Z5-m7UcnkbprYYAa@panix.com>
References: <Z57qRK0zdeVGp4X8@panix.com>
 <CO6PR18MB44190C87BF96732FF15D1390C7EA2@CO6PR18MB4419.namprd18.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <CO6PR18MB44190C87BF96732FF15D1390C7EA2@CO6PR18MB4419.namprd18.prod.outlook.com>
X-Mimecast-MFC-PROC-ID: tjqisaV56GX3-PJVcJrTyGoHt5FE73lQim4aJYBEsJ8_1738516205
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: DPvej2NzRHVwVXRVMwpC_LmE3EYhlsyr-xnpWoFfKlc_1738516208
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Thank you. That was a big help!

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com



On Sun, Feb 02, 2025 at 04:28:10PM +0000, cstrobel crosslink.net wrote:
>     You basically just press tab to move through the form.  Use the ORCA-a
>    command to toggle Browse mode on and off.  You must be in focus mode to
>    enter data in the form.  If you want to change the default settings for
>    ORCA and Firefox, press ORCA-control-space, then press Right Arrow
>    until you get to the Firefox tab.  This has ORCA settings for Firefox.
>    If you don't want ORCA to toggle focus mode or browse mode
>    automatically, you can turn it off.
> 
>    Read this part of the ORCA manual first.
> 
>    [1]https://help.gnome.org/users/orca/stable/howto_forms.html.en
> 
>    [2]Filling out forms - GNOME
>    Use Tab / Shift + Tab if you wish to leave the currently-focused form
>    field and move to the next/previous focusable object, regardless of
>    type.. Use Orca 's structural navigation commands for forms to move to
>    the next or previous form field.. Depending on the form and the
>    application, you may also be able to use the arrow keys to navigate out
>    of a given form field.
>    help.gnome.org
>      __________________________________________________________________
> 

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

