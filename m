Return-Path: <blinux-list+bncBDX2LR4P5UIBB2OVQS6AMGQEDIGKAUY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com [209.85.166.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C43A09311
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 15:13:02 +0100 (CET)
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-3a78421a2e1sf29470515ab.2
        for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 06:13:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736518381; cv=pass;
        d=google.com; s=arc-20240605;
        b=LlZSLhqxUOne3YhgdpYjRGuwh4F27mPwSyE+L3QR6V5EVtURi0HMVESr+/pZgQPuz5
         IL17PcewOnh2WyKjFZcN49RKJNNPpikDyPlmdq3WGxE3G903H2WNR2M8z/J0a1Vn5W9Q
         koC40IHsvAu4CJxz/J0xTHLEBHj3t7wipa0Dih7eLMSPrAdG9DkJJWjmvZu0TdgcxiHb
         4XVAC/BC8thaPdrocHzu1jYF3b0ovVRf694CSt0fC1reJiUb4CRwvkKvz4DfmLm1z3Pc
         KWH3FrztKjNB+haoVGX8FOYeLy+oRX3iY3DFF6mRQJ9Zn6Yftx5M2KLLfuJwzqNJ63T9
         LvTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=wclDhmIui46/JUjw/Ze1ScDGbpUYekyU5hVaSLB5Hsk=;
        fh=dWWHc50Ur5eNkmE6lUodFftEk31+B5PwoGH2WVdNQe4=;
        b=L6ZSObm75AJmvPxTTQmV3V4w6qu4KTXtOSjP+lcfEZhn3S3unBami72H6UDr6sdW8/
         NBQmxuCzNuCmzslMFRcQuHbczkG+RYygJQ83O+w4ukOf6PxQ4pj7CkKJIEdPRceySfyK
         9m5CPLId9fizWFWwW8wdVwtn6BPXMRQkZeYzAE5NBbsu6i3xKK6swlKYu4exeep+/TeR
         NZqjVKLOxbTn0F9Q1E8ylsLlzbyngz+UXc85VrzGw4qAUeoA+mh959SvmQp99K0vfqPB
         o2+8FaJu7KMhJcOKeEtUv/BMKLfj3VyNJUqw10PAlTgTu9rQAr10mj1Y+ipX8IyAFkVV
         2Hhw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736518381; x=1737123181;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wclDhmIui46/JUjw/Ze1ScDGbpUYekyU5hVaSLB5Hsk=;
        b=uhsGYwbqFofAo+81LgNgq4V92P2WISkmi0Hw4sRi1gdRyaHwFMxoS8M9h9IZSkHeiw
         PSl9F7DmkfkRq4AW0MDLxA8MXp+loDdqV04WXA9R4xSJLhsj3XPqFpBiI0okTH2o10NZ
         QkcuYm/gkPwAxA0wWfsS+wxS27sHhT7WrN8G2Fr8OU9B4ZFhEEN9IhLrnpIGJ7Ux7Va7
         qwiWD5yTIxl+QftbfQd4P1QDMNBLKs92Hma4gLq3NFWbSizZQILe0KSOIz4W1RiF6qAs
         GZz3ZmDd1yCn77q2sOzMT5jiFDHweH5CkgtQyD8xBfrmVSwop2VDQjsQwF0ENDvtcQU6
         981A==
X-Forwarded-Encrypted: i=2; AJvYcCVLVH6eNnIUSDzNCs15wCSDmcjMIXhuR7n902PaeAuI/bgEEoeKgkSUHmrVucKcRGwrVZ88sw==@lfdr.de
X-Gm-Message-State: AOJu0Yy8FwzjSt7Ahi07OCiHu1xMj34OD/gPJbFwEyrW9enXEgtrWkBs
	vcIDU/M5/esp1M09FY0a3MrZhj2Z/syRKUvo+bzAPybUE84uauMzEz+eAfzlIAk=
X-Google-Smtp-Source: AGHT+IEWes9ZwwMiixksgoLhYWNlWnTT43heJWBUOjq84WO38izjRQLyiQUhEez5mhveiQHUsnoEWg==
X-Received: by 2002:a05:6e02:190f:b0:3a7:8cc2:9a84 with SMTP id e9e14a558f8ab-3ce3a86a28amr84449285ab.5.1736518378715;
        Fri, 10 Jan 2025 06:12:58 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a92:d608:0:b0:3a7:e18f:a625 with SMTP id e9e14a558f8ab-3ce475fdb8els11304665ab.2.-pod-prod-02-us;
 Fri, 10 Jan 2025 06:12:57 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUf+nzIVoj/+p/S8KpguFPGHdbIBka4AzW/Kq/lKksD3ECBJugJQK2cE31zm4iYVABvebzy929krd+B3Q==@gapps.redhat.com
X-Received: by 2002:a05:6602:3e8f:b0:849:c82e:c03a with SMTP id ca18e2360f4ac-84ce0163894mr871428339f.10.1736518377134;
        Fri, 10 Jan 2025 06:12:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736518377; cv=none;
        d=google.com; s=arc-20240605;
        b=ghvGvUMJC4+uK9Mk8sZk+vMz+oEBUJy34fq/TWEbN2Roh+ms6t1p60Oig0Jr+Z7plF
         ErQtKM4w9w5I91+Vk0tm4EaRLSGodLBimHpcj29alMe72FaLzMSqJWduDCpEUuCrtypJ
         qlBSIgdoiF0gaWoAFvpDsJ77Pf8uKvwicQEv77mCZbCVSHzjwDUROpWO/mo9ZDJfwX/3
         JQXE8fp/NFqljPT4g9Ne905gqca9p3pN8wwA/BkIw0RuJYbvaroMm9AkKrRqiN5Pixml
         X8TLmmCwSnYr1v0Avy9mt/NcE/r+xC3x7xjsPNSEHft/SCqj/OWzi7EhzK4zIsXbChXK
         Cr9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=w6MfFlRhOwK+twoiu359puWic6S8TqG0z2kW7PSG4Ko=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=F6/q2LknUNX44kq9MfI0fk7iw8CHPHnt9PuYuri576I2v2E01d3C0AgBZOuFTaAOh5
         j9A+MgNLO/9EHvPYP9q1eSPYgcmUE5ey/D5u0/PpYFNH/OPGp7voEML11oW8QEtj+3x+
         vP96y5RC4DmZ30XKXa2JiMFwcdaKZoxnNWuY8CuE/F9iYtefHuJowQ1JF8nPi7xItN0T
         ogWV+ZP05cx4wt++1RlNG67IGLXihFQej2/wmYr6YAS9UM2jOVktb5J1vYgJU2HfiEWI
         GrSCP9F2FkkKSyxZ05+DZ6mdv0hxLd9nxwA4OJ5yjPcL5ZkiVXMyG/VLYN+xODmi5BPE
         B0Fw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 8926c6da1cb9f-4ea1b613022si1609957173.54.2025.01.10.06.12.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 06:12:56 -0800 (PST)
Received-SPF: pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) client-ip=173.255.224.66;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-351-NrzfUR-WOLS5O1S1tpFhMA-1; Fri,
 10 Jan 2025 09:12:55 -0500
X-MC-Unique: NrzfUR-WOLS5O1S1tpFhMA-1
X-Mimecast-MFC-AGG-ID: NrzfUR-WOLS5O1S1tpFhMA
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 71CD419560AA
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 14:12:54 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6C677195E3DE; Fri, 10 Jan 2025 14:12:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 69CD9195E3D9
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 14:12:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BDBD519560BA
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 14:12:53 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
 [173.255.224.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-206-B2Ua503YO7C2CMHGVJWDew-1; Fri, 10 Jan 2025 09:12:51 -0500
X-MC-Unique: B2Ua503YO7C2CMHGVJWDew-1
X-Mimecast-MFC-AGG-ID: B2Ua503YO7C2CMHGVJWDew
Received: from [192.168.126.128] (unknown [176.230.58.49])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 5E929A25DE31
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 14:12:50 +0000 (UTC)
Date: Fri, 10 Jan 2025 16:12:48 +0200 (IST)
From: Geoff Shang <geoff@QuiteLikely.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google blocking access
In-Reply-To: <m3a5bzvek5.fsf@dalen.lamasti.net>
Message-ID: <a7efe3c2-71ac-7ad3-21f3-800f38ec6207@QuiteLikely.com>
References: <m3a5bzvek5.fsf@dalen.lamasti.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: iMbTb7mwbM7s-83zBWOTREFK-fahNIJ-aR3L1o5Tuig_1736518371
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4s8AQg2KMLUB92Fdl5gwmOsm1kPOPosE3eSK2UHihkc_1736518374
X-Mimecast-Originator: quitelikely.com
Content-Type: multipart/mixed; boundary="8323329-1469674266-1736518370=:187586"
X-Original-Sender: geoff@quitelikely.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of geoff@quitelikely.com designates 173.255.224.66 as permitted
 sender) smtp.mailfrom=geoff@quitelikely.com
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--8323329-1469674266-1736518370=:187586
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

On Thu, 9 Jan 2025, Lars Bj=C3=B8rndal wrote:

> I'm using Elinks regularly from a server located in a data center. Until
> recently, with no problem. But now, they have blocked the access from my
> IP address due to the lack of javascript, and the posibility to prove
> that I'm a human and not a robot. I've not found any email address or
> contact form that let me contact Google to remove my IP address from
> their block list.

This can be a problem with accessing from hosted servers, as you are=20
somewhat at the mercy of what others may have done with your IP address=20
before you, or what others with addresses in the same block are currently=
=20
doing.

I hate to be one of those people who say to use something else, but I also=
=20
recommend using DuckDuckGo.  I've found Google's search to be frustrating=
=20
when you specify several terms and it decides not to match against all of=
=20
them.

When using DuckDuckGo with lynx, it redirects to=20
https://lite.duckduckgo.com/lite which has a nice clean minimalist=20
interface.

> Do you have any suggestions for how to resolve this problem? Is it
> possible to run orca remotely, so that I can run Firefox from the
> server, just to access Google and prove that I'm a human, in hope that
> this will remove the IP address? Do you have other tips?

If you really want to resolve the IP block and you have Firefox set up=20
locally, you could forward a port on your SSH connection and access it=20
with your local Firefox.

Example:

ssh -L 8443:google.com:443 <yourserver>

Then once you've logged in to the remote server, you can connect to=20
localhost:8443 with your local Firefox.

Of course, you can use whichever port you want for the local port, so long=
=20
as nothing else is already using it.

HTH,
Geoff.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--8323329-1469674266-1736518370=:187586--

