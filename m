Return-Path: <blinux-list+bncBDYPVTOXSQEBBYOBZSXQMGQE2EC7WXA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D4287C0F7
	for <lists+blinux-list@lfdr.de>; Thu, 14 Mar 2024 17:08:03 +0100 (CET)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3c260cb826esf1302981b6e.3
        for <lists+blinux-list@lfdr.de>; Thu, 14 Mar 2024 09:08:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710432482; cv=pass;
        d=google.com; s=arc-20160816;
        b=JXgEBVG5sgn7XEW2M62phiyrqAKvuPeaEOXpN5/AwTafRSkPH+Z+WT+TxSBcchzrh3
         He93tj4z0f4Y+pDgXqs4l3Vt2vihs2ghwwOKh4ZbHYDAPwAevSQTWFwICMATSgwypEbs
         YiSKHcY2KsQFyIMHghD94hazR0dCQC1/TicdAKtc95vRcLJKNh//6Ur+vQcCs1v4/rHB
         TfjdtdVxJz5FkFshIE7nGwkjcCErI1z4xI24GG2bdHRl7B29ma8MeyzHLcdj5Cuh8rDx
         3d8BP3+9IkN8+xMxyHtt3ZVJZ7uySmvdWskrWpNY+Dv9kx+99TZvnN5XrnJRQ2z9vTcs
         DksA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=oo/GyMDcKvg+CiSsOAeKj26hWrYgEI+CrirxqLv9zCU=;
        fh=59K6dWKY0x2vhENjlXqk8vwuzl3Lz61//bzxeYUBPjE=;
        b=UVEmwdCdhgOeY1njIa2Hy1MpAshZLn9CO2SU57TRSu71XsLlOI2CfLa25s36YlQw2s
         2t5uRfGQ9gxRnHQ4KqpJ6iX8PXoa/R75cieLZxagHfXBRYRxj/YuhvoEF76jV1ILTAAa
         u409cW9Cn8S0kUVTVG+ihMJIpmzETuruqmp8tbAfpGBjYQAuZxF4qDXskUSfwNKkbC7m
         xUCkUplzHcsO+r0fl/vnZN4YeaNwZSAkNDJjq3HunjfXaMywlVBRI6zcWtAewIwJqeZC
         1G4i/Tld3FNx9LCWWkWGtFUo3/bS3e4FFk3A3VlrJ4VfDJuF5aikTkPJcvn+SLTAST1v
         Vxgw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710432482; x=1711037282;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oo/GyMDcKvg+CiSsOAeKj26hWrYgEI+CrirxqLv9zCU=;
        b=EQCZ/Lsb1LNWiKegOrvVHGatNTjcou3gY9XTzAElDqeZEDuirlAkTkTjN73SIakyko
         qyo3TGY5LXqOy67uh8I7CGKncTeEVgOfu+2Q+htm7zClUeHok8nNpT1LOk8W7i2ITnkJ
         XPIHKncYarJZ5gpUZ2lQ/7t+tQzj9Qc+U2oWB3DKCQuSn5DDaTnR94kDfF9e6J/VuCcK
         ZTfTBI7jk4Mg9wqoazAS6IoHlCHFV7VTk1LCqGuXbnihDWKYqZkLjfA7gAK9XngqTG84
         LZgqQzKBqYzuHKDAIedeKP8ii2y9yUS9Q7WstgNaS7yt4mwQHKyIa/jPpAB7zC5gfEeZ
         XOfQ==
X-Forwarded-Encrypted: i=2; AJvYcCUJIKJNlB7YgC8VtlywIxGlsh2W5ycln3JOCDxlX7a7y+urTccSpEXXiIecxqcCe3Ro+554MmDUvSW+Ew2xjEJR3jOK79NgG08Q
X-Gm-Message-State: AOJu0Yxs5KtMMZgTxvq45zdxHTeHTGstOw72jGQWXZO/9ts7M50WRwsJ
	gebFG+zpC12UbhYy3czhc8ak9e+a/0t/woVjWo7zUowsRz4lDaer1q3I8ijnKUg=
X-Google-Smtp-Source: AGHT+IHBcOPp0F4ivsnRdmZ//HAYQWBwPemwehwqbmSkJ0BgGCVrGGDNTMJMl2F0/1qDZUMsZ0KkXA==
X-Received: by 2002:a05:6808:2087:b0:3c3:6dc5:c1dc with SMTP id s7-20020a056808208700b003c36dc5c1dcmr1202558oiw.16.1710432481841;
        Thu, 14 Mar 2024 09:08:01 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:191e:b0:42e:ee3c:d6ef with SMTP id
 w30-20020a05622a191e00b0042eee3cd6efls1492158qtc.0.-pod-prod-06-us; Thu, 14
 Mar 2024 09:08:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVJ2GLRgS43Uw25kIJYplBKcM8NxGdqd6d/pSML7muLxWTgOFUNt/9zAjiPmr0XJIDQm+SJ3dxzHSlA2HPW4ieRM0SdhCUirEfX+/N9
X-Received: by 2002:a05:622a:11d3:b0:42e:c415:2114 with SMTP id n19-20020a05622a11d300b0042ec4152114mr1115022qtk.33.1710432480825;
        Thu, 14 Mar 2024 09:08:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1710432480; cv=none;
        d=google.com; s=arc-20160816;
        b=bcRBrTxJr9QSRhBXb/vVO669pWSuRSaKm8lIde3g5pkjSDmgGVPWYDT5dEqGW1sdGz
         64wUXSkeR+YNedfJfpesao9XVPQXGPO9y9ocbMm7CNWuDtuQwRIDJaO3I0dOrPhIVEbQ
         SuUnOe1iK3H++sJxn9oCO1DAxTlCGY/Rk4p3HXe6RfCWej+xUtyXh4sozgf0JXaNxqWd
         bNixic+CbUJgT7DJvJwAfnsmgxo3XjU6qtBuRl0piV431eQ+xTrfDpHizo+WVhUQtuyr
         fR3ztXa1Khr/JOBq44Fh5rIH1BcnUOkPVthurtr/bT75moz4DpkDi0c32J+zQm8+dKN5
         otoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=OimVblr/YDVM9eCHuk1M2g1Ae7c85PbzeMMb/RNqqQ0=;
        fh=LNjOajhr3fYBSReqTqgpb5X2Yh8PmfdC/w2YWQhMuEs=;
        b=cEWsMUc1LmJxo1ZmXjROnr5jmMg47UP+rYonW5Chadwl5wKHSrghe/cbrsgbQrMu1F
         AETc3av1Ie8Zgb9/hS7fIL93z5Rb78VBfV2ulo5OufAMt8aQn8iSYLHWv8vKaVg/mMF4
         4hD6glYBORaKPSwoZ1jgtM/kKcGZ+IhWRDdM65XC1WFJcn8BWfXeMT6yxsIno9GQpDNR
         7xijCxa+RyKZAg9Ibpwvxv7TNzdC/yxfry1qGy8uaMmNvU5Jh/glC+COjy9r3DNgGQzf
         3R6DF107NrNx1Vn02PVACiehtZr2Ox5H2F/NplBE6gRNpP4aq2mxaBfjG/ImM0x7JK8/
         ndLw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id c18-20020ac87d92000000b0042f1e537e15si1759448qtd.591.2024.03.14.09.08.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Mar 2024 09:08:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-623-bySjc8StOCizvedv2eepNw-1; Thu, 14 Mar 2024 12:07:58 -0400
X-MC-Unique: bySjc8StOCizvedv2eepNw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 324C286C046
	for <blinux-list@gapps.redhat.com>; Thu, 14 Mar 2024 16:07:57 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2EFB9111E5; Thu, 14 Mar 2024 16:07:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E9D0017A8E
	for <blinux-list@redhat.com>; Thu, 14 Mar 2024 16:07:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B00A101CC79
	for <blinux-list@redhat.com>; Thu, 14 Mar 2024 16:07:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-614-8yMeY7HpMv6rqcOqrfK1tg-1; Thu,
 14 Mar 2024 12:07:54 -0400
X-MC-Unique: 8yMeY7HpMv6rqcOqrfK1tg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4TwXN86BKmzndd;
	Thu, 14 Mar 2024 12:07:52 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4TwXN85tcdzcbc; Thu, 14 Mar 2024 12:07:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4TwXN85qHSzcbV;
	Thu, 14 Mar 2024 12:07:52 -0400 (EDT)
Date: Thu, 14 Mar 2024 12:07:52 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>, 
    Blinux Discussion List <blinux-list@redhat.com>
Subject: Re: spd-say as Root?
In-Reply-To: <b2538c89-8723-b35f-eb42-73fd7c757df4@hubert-humphrey.com>
Message-ID: <559687d9-5238-dfba-82ee-8d78a3bdaca1@panix.com>
References: <b2538c89-8723-b35f-eb42-73fd7c757df4@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

Fenrir comes with a script you need to run in your user directory to
enable that user to run fenrir.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 14 Mar 2024, Chime Hart wrote:

> Hi All: I would like to try Fenrir on my main Debian SID machine. However,
> Fenrir only runs as root. For an unknown reason I get no sound running
> sudo spd-say "this is a test"
> Without sudo, its fine. Running spd-say -L confirms I have Allison which is in
> this case 1 of the Voxin voices. Just this morning, among my Debian upgrades,
> I got
> Setting up speech-dispatcher-voxin (0.11.5-4) ...
> Setting up speech-dispatcher-ivona (0.11.5-4) ...
> Setting up speech-dispatcher-pico (0.11.5-4
> So, I was certainly hoping something would have improved. I tried running
> spd-conf, even with sudo, eventually when pulse sound system is tested, I hear
> a blip. So, can any of you please suggest any other solutions? mpv seems to
> work in sudo.
> Thanks so much in advance
> Chime
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

