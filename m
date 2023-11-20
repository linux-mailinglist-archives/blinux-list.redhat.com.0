Return-Path: <blinux-list+bncBCLPHQH4XEIRBOWM5KVAMGQEJEXULTQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1D47F09FF
	for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 01:20:12 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6780198343dsf24237996d6.1
        for <lists+blinux-list@lfdr.de>; Sun, 19 Nov 2023 16:20:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700439611; cv=pass;
        d=google.com; s=arc-20160816;
        b=kN+ZAki1pz/2LYxjaxX10oLu8sxIedw+w/iux8xBvWSDNoJCXDL+2l2QfBENzUvMwJ
         8DSxq8jJLeM4x5b7pX+LHlCha7yY/bXQgKn01d2PmS8eV70D5iZYiERkrjyOCb+SGll5
         /rZBp0+KfJiCy+oagGzf42t6ZBZbICIiHtQedte/WVsX7l9LYUYQmh1T+f5o2YFcUNpY
         Jd5SPWStooGi/emjHba5CH1puwlgbFDYA//7FAMU8CfQgsmPEqOmmzvUeum05XFbUiXf
         BPUyI2K8d5rq22wjs4eh86x63M1jjtxpK5YffUdmRzM+K2U1M+MlV1s50nh7H5rEoZ+5
         LgBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Bp4CGk1r7rwISRj9TT2eYKrKIgj93gGctoxDy/3h+y0=;
        fh=v975d/QHAjs5Nz+upTORx7waPWYvFHVoOx1vaTLJqoI=;
        b=flgeseEWmnyf3y2+JAKBGAR60+yCLweW/Jap+bdYvMTcdMyqpI4xCzLBtXAklILv6L
         m+gDBxrHi+JvkMcN3eE+HOJdo1CFnOE0oR13wK/K8/2vVHOlWDNDeR4K28eZ0Vu4mH8r
         EM7Nq3stblgj668vW0+hZUMS5Tulmnz7mYixj8RsngKGHO2cLe0AMYW5bMG0QuNKoBaQ
         +oSUwW1jrcOCWPFRotdBC2y0SsCSdB6n9mAsbGsPCA/Iu1Z6xbIkdvC5lrKY8QSqwMqp
         XnXMg2QFxzqqlePFpu6NbuWVy5834tfsUODV+OGPECr+IM/I1Bx0dsgTESthVDb/4KYy
         mpdg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700439611; x=1701044411;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bp4CGk1r7rwISRj9TT2eYKrKIgj93gGctoxDy/3h+y0=;
        b=SWSVo9DcWdi4nN2kB5TLihlEivFptSH62J4hjDg/seIiRxWVD8i5IBdJ+GNTPaTxxq
         dVO0ZuDhztaDIKlEph4kF+5P4cbd6TPMGAc3N7e0a4/bCLPcyYeb9z3JvFgVXgK+4nYe
         yUBnoVDtlyKSRQSvh5V3d8rlgPw0wx8eEL1+IrrE0aFFH8rdVuWVe90noHyA3IT8fDKK
         CECbm6//i5cxQjpmCO8sb88NiN24yyn0QJuPIgn7znuPrQ8wQae2kzJYYpxfZSOzbYjH
         RmYDtEyw+4JH+HwsIy8a/Q+8yhr+n/jeBMGU63uqyOZq84ILY4G8zAVXFnl8aPr7i0ji
         WNqg==
X-Gm-Message-State: AOJu0YxfGaOYa8aqWYT0epdzXpC0KrIneS2fd9NOK0uUDl1CE/IALU4h
	3uE1oEP73AwDcB+GFeQ1oTUnFQ==
X-Google-Smtp-Source: AGHT+IG5XSVzMxJniirXDT03eaRk63lfJ8gdHDEpQhrrtIGA08LrV2jXuHL4tW9bgBdqPNrhlz69Vg==
X-Received: by 2002:a0c:dc13:0:b0:66f:b626:fef4 with SMTP id s19-20020a0cdc13000000b0066fb626fef4mr8230504qvk.29.1700439611070;
        Sun, 19 Nov 2023 16:20:11 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5c85:0:b0:65d:b9b:f310 with SMTP id o5-20020ad45c85000000b0065d0b9bf310ls424288qvh.1.-pod-prod-00-us;
 Sun, 19 Nov 2023 16:20:10 -0800 (PST)
X-Received: by 2002:ad4:596a:0:b0:66d:5a3a:c5e6 with SMTP id eq10-20020ad4596a000000b0066d5a3ac5e6mr8354916qvb.18.1700439610087;
        Sun, 19 Nov 2023 16:20:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700439610; cv=none;
        d=google.com; s=arc-20160816;
        b=G6Acz5jkb2oX88rWoT/06smzFvNqDg20l6L+bzP0xrhVfzySgK8RArYt8vT5EwKugw
         ju8CVwLs5RbxpRbOBJe1sFv+mIIPF0/9g26QeqMHAHOPXOBXX69k5CwWs8Grn2kGbKxJ
         m/xxapIys5W9aMaW5ok/CI8ZImnAm2yttDTfRRLn0kCkR95WXCdxSzs+vq5PceQ5bhXz
         eEhA23gpm6q3nOwjjSGydPhZXrAvvNSZKnE45LHn2pPOOIEvdGBVUlfrBA5VmJtvDCFv
         khyGcUUSYu0sP6uzXhN5IX86wFz5DasQ//zy1YaIc8bgMkKeOpV/KKSfugs5dmHnmSsE
         tBpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=EyfDj3BPENrqv18rBzHsrYvx1KTFJQN57cxcR6ZMoUM=;
        fh=v975d/QHAjs5Nz+upTORx7waPWYvFHVoOx1vaTLJqoI=;
        b=qTBrgfyA7/ovuB5yNzvSxr7Z5dMm8YFZfBLRCm7sL15GsgdPTmoWWRg4NM6uwyGXux
         DVAm1OfPO3GhKvf/88Dt5RV9QVIIjpN57fs0ZXPwxMhCyo1KfZ6DlyNXdho29KHEMIB3
         //f954Nd6KVI1Z+dqpN1RBB2qAbu6mm9MxzFrSsZBKP12wACXdKQLl0wS22g3zC/rkB7
         ST6TVhgicNiwjtHPpRKuwCnm5C+CqY12INmA0hxPbsNFL254P/J/EXgA5aEhDSZEIJkv
         ZOvpxWz1m8xhdG8R/dZOFozhXlVA/iej3Q0NNDzVRODCYJpXPSbr0kDBYjyQsm5N/sVp
         heYA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id jx6-20020a0562142b0600b00679d9f95ecfsi1195969qvb.323.2023.11.19.16.20.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 16:20:10 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-217-iy6dDL9tP_2Ig9Pt88OVUA-1; Sun,
 19 Nov 2023 19:20:08 -0500
X-MC-Unique: iy6dDL9tP_2Ig9Pt88OVUA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71F0A1C068F5
	for <blinux-list@gapps.redhat.com>; Mon, 20 Nov 2023 00:20:08 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 6DEE1492BFC; Mon, 20 Nov 2023 00:20:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 65C70492BFA
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 00:20:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2C076101A52D
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 00:20:08 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-677-k4dCwQ14NHq5w1nZkUINqg-1; Sun,
 19 Nov 2023 19:20:05 -0500
X-MC-Unique: k4dCwQ14NHq5w1nZkUINqg-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id DC39A3210E;
	Mon, 20 Nov 2023 00:20:03 +0000 (UTC)
Message-ID: <67f253d5-5702-4412-8f4a-5c95d23ef907@jasonjgw.net>
Date: Sun, 19 Nov 2023 19:20:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Connecting to wifi in LMDE6?
To: Jessica Dail <jldail13@outlook.com>,
 "Blinux-list@redhat.com" <Blinux-list@redhat.com>
References: <CY5PR84MB3051475D0C7DCCE86B6424C2D8B5A@CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <CY5PR84MB3051475D0C7DCCE86B6424C2D8B5A@CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 19/11/23 17:51, Jessica Dail wrote:
> The only thing I'm unable to figure out, that wasn't mentioned as part of the installation process, is connecting to wifi.
> Has anyone done that successfully and might be willing to assist?

Find out what packages are installed or available for installation that 
can configure the wireless interface. NetworkManager is a common option, 
but there is also iwd, and, recently, systemd-networkd.

You should be able to add details of your wireless access point (SSID, 
encryption password, etc.) by editing a configuration file or by running 
a command in the terminal.

What you need to do exactly depends on the software you have installed 
or plan to install. For NetworkManager, nmcli can easily be used to 
connect to a wireless access point.

In general, good resources can be found online. The Arch Wiki is usually 
valuable, even if you aren't running Arch Linux.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

