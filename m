Return-Path: <blinux-list+bncBDYIZZNASAHRBYMB4C6AMGQEPDDAZCI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mail.lfdr.de (Postfix) with ESMTPS id E7840A20028
	for <lists+blinux-list@lfdr.de>; Mon, 27 Jan 2025 22:55:47 +0100 (CET)
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-e582bfcada6sf11909060276.1
        for <lists+blinux-list@lfdr.de>; Mon, 27 Jan 2025 13:55:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738014946; cv=pass;
        d=google.com; s=arc-20240605;
        b=jkzBVlpM8I+MD71F27xt6Ba8bjOSRayrLJMRU4UF1Sui2TNhIEteupZWWOFFVgxJ4Q
         0nhAOY3ms9aAjDxsxh+vofBZLLc6b24iiVFaeTsxd/CulxR5TFC+4nNRpjxEHUmJ0r3U
         R+mREvr+2/IY7J7DTH+0oOfqMUSz1likvl/ecgLH+SX3REOIFYw2wuJmeyJpZsPK8fxh
         PE+1Kn0fAWEFAIMs3JLkGFpxjuiVBZgFdMrgmq3u2pVLPbECbZSXbz9beUU75nT/MCS/
         fbD0N2IY3fH13bKW66o1zjs6U0TYjUNNp2v0mc44wE50hABEaZaKa2MCjZpO/mEWYnxm
         mMkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=3q2+EClE33H+PiKmpUsSRkLPLGVl1jcQN+er5khESa8=;
        fh=diP8p1xFUS9U8GxFOIwJSnNL/jz6FjY5wpw22EvbXe0=;
        b=Oi8z6SWj6ibalGNumrBf+e1FMhFeLm/Bazbx6EpSTSI6ZSjI0pZty32sUUkANBi2VQ
         83y4lrCWWPTFWzPrFH4djR7rz8sAWtqgMuFdds7ZBNl2r8N7IzAWf5IEPPIp2XmIK6jA
         Lt0353uRELNgwa8+JiJcsQy0KhmFYL7Tl1P/dw6qipcV45vdjkabfxytLqyqenNIA/m8
         vcjS7THo67H9JZ4mYk7xmuZMDrxBFrIoPXgd76TtP9xOKH5fPbuu0vcy4PYUFjFoWp6Q
         mwrzJ9ezh1d4LSeGxqwmBU/9XMPENCgexSvbd4xyOwb+tGv6iDsf1LVQx+Eralpt20aj
         SE2A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.45 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738014946; x=1738619746;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3q2+EClE33H+PiKmpUsSRkLPLGVl1jcQN+er5khESa8=;
        b=QRhf/q59uAJf2pd9ffbX30cMUzlfbgI5dcmMK+yPQsSE3rsclQG5nv92MiRrs76HpK
         YQkNve08AEAXY/I/dderxmsEbmpapokgujFHiIPiVucgd8HJQ6JZ6egpH4i4tk3iAlpf
         DLu5Tq4lw2xXleRlZbmZqCBjmw2GnZACaeZWXbcFE8Zd5e0GjpVpP2XNg1PSgbXFa4ih
         oyGyYb+G8V6j1dwkCARlmO0zEh4XS2PGzq4UfIxjzQ8vB1r+dhsM/81uUjUrupblbMC4
         MsLypCTeXLqCVu0zz9pFXZpNE7i+eNtoBRwdzR1x7k9iVUBqPQ2OWZL913GhBxCB7La6
         ac4g==
X-Forwarded-Encrypted: i=2; AJvYcCXzmJHNG7xvbpidsPl804fkCpIiVF3w7JdoqyGFNY6wUzTHVeJzz3ypu5AM6MZGQ2jrVbl4vQ==@lfdr.de
X-Gm-Message-State: AOJu0YzWlBAm3LHenosZZOmvD5UCfhxLBBwAv++iIYORxIMbQd2IIZym
	KlrBM4myrEZZaSt6aXvR/3YWm1MD/GZcuJ2swFB8EWlUs2OUCg4Y/x2CgG0ilHc=
X-Google-Smtp-Source: AGHT+IE+kyunxmR8Y3q+CUxFkpFNzKHYncDdgyqcdFfqWOWkIocBlt22ih0LZySGS93MUrnC1Nodkw==
X-Received: by 2002:a05:6902:10c6:b0:e54:bc9f:a7fe with SMTP id 3f1490d57ef6-e57b105690emr32871901276.20.1738014946352;
        Mon, 27 Jan 2025 13:55:46 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:b117:0:b0:e48:25c2:a5d7 with SMTP id 3f1490d57ef6-e5825856250ls4494856276.0.-pod-prod-06-us;
 Mon, 27 Jan 2025 13:55:45 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXo+ofn0EhdzKsVtJ1/LK3z3gSb8qi1+cZ4GOviekKDHLhtmaIheHXSps4xhGibpan+Dqm0WLxP/ntR1w==@gapps.redhat.com
X-Received: by 2002:a05:690c:360b:b0:6ef:6a91:4971 with SMTP id 00721157ae682-6f6eb93d363mr330335777b3.36.1738014944907;
        Mon, 27 Jan 2025 13:55:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738014944; cv=none;
        d=google.com; s=arc-20240605;
        b=b5ySGbR8EfSNhvQDq+HgKf6h1XE7kp0osvIJvJZZI1vbvWvyf2CO7I/LwT+E/NGRB9
         rBb1uM2j1VpJJF7MqEHnXJZQFZyWkMdmip2c3M+CJcKGkKRuQbJ6hiGi2K3jKUTck14U
         UW1M93gzo2hgCwGsOmZtuJTfvGojF9L1MVZFgeEWSujOQ3qTIt2mxedKeoTJu/rvchHM
         C5V+ujIYdlqdMZAvhQHfinGtC/40HRNAJTt8hPq5R+yTa+lVdNIYB0g8gK4TrDcz7hDL
         5XeGnQW3Z2il3Dq/jYi6rf1C9x/MoQUXplX3fRskgDo5/4RHjU2GXaFYud2r7/5N6kaQ
         MNmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=dqURpBDg/FLAEoD2hsuwyWjdcW2JRQBK6D4t6HsdSFI=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Yp+5jlUGI8XuarMaoJMch0cpSn+L5zpwRGH8UcBt/vrqqR80utzgp6KJSJBzJdzyeT
         j1+lknKSFhRYtGr5XSjErBce1jS0tjPTvxd/n7FM9RgoOU5/nICO13+xXe6PiK2LIwnu
         ZKtEaT9qGFszSFjE/qyRUGa6yftfu59difnMOtAagSySuxUwW97s8of2YRgFZfA81TmM
         6Sg77FkmWfSDr+RIBkj6sXNAXRjryzIh0/mwhQ0P+k+QumV00Nnb/PzUsMQoZ1VupZru
         RkR9BP3SYZC3Kv7HeA4CNqGttSBy188esxMfqWbWLOnqZD/+p2pHIxcMDAUE6WsxMH9p
         fftQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.45 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 00721157ae682-6f757995e62si59973277b3.253.2025.01.27.13.55.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 13:55:44 -0800 (PST)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.45 as permitted sender) client-ip=209.85.210.45;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-624-aZilHzYPMm-S1uoSeTft1w-1; Mon,
 27 Jan 2025 16:55:43 -0500
X-MC-Unique: aZilHzYPMm-S1uoSeTft1w-1
X-Mimecast-MFC-AGG-ID: aZilHzYPMm-S1uoSeTft1w
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4DDC819560B7
	for <blinux-list@gapps.redhat.com>; Mon, 27 Jan 2025 21:55:42 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 49C0319560A7; Mon, 27 Jan 2025 21:55:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4725F19560A3
	for <blinux-list@redhat.com>; Mon, 27 Jan 2025 21:55:42 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CD7F71956052
	for <blinux-list@redhat.com>; Mon, 27 Jan 2025 21:55:41 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
 [209.85.210.45]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-574-TG-oSaoCM6mhLLoLCM5qMQ-1; Mon, 27 Jan 2025 16:55:39 -0500
X-MC-Unique: TG-oSaoCM6mhLLoLCM5qMQ-1
X-Mimecast-MFC-AGG-ID: TG-oSaoCM6mhLLoLCM5qMQ
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-71e157a79c8so1293117a34.2
        for <blinux-list@redhat.com>; Mon, 27 Jan 2025 13:55:39 -0800 (PST)
X-Gm-Gg: ASbGncttbQYImgcJ9HINyIXguQovCSHbGMpoJ1a9cO0U4qYivgvOFFA8jUSbnIL0EQz
	Q1iMZfJzO9+A+QNjlItgXmKqICohs1oH/PVkbgH2FR04aCy+kzhp6Px0dQTDhFD64kOi1865NXZ
	itruRzm9npbygVBsMfMvLLWPA/AIqhRHmhPeByGuajqD15OQNcTtCqLVZN04s87scruQRabjP30
	G50/v0HJwV9vQ94jRrX9hZBkmxVUZ3M62pn638dSvbtp/nfIufJ6p8+9P80PgYVK47B7fmF9mNs
	enEuwem4eB6KIZGcNNqhZAf25sLPPKYAv2dgSd+UUHuLurWCZE54n9rcVzp4UlNwEhbRJZ8TlH4
	8DXmKjuI=
X-Received: by 2002:a05:6830:d0c:b0:71d:f21b:a447 with SMTP id 46e09a7af769-7249dae0ab7mr24415762a34.17.1738014938014;
        Mon, 27 Jan 2025 13:55:38 -0800 (PST)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fa8b53fa13sm2466398eaf.13.2025.01.27.13.55.35
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 13:55:36 -0800 (PST)
Message-ID: <bd69542c-3b9f-4a21-a172-f95110fb9894@gmail.com>
Date: Mon, 27 Jan 2025 15:55:33 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Arch
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <DADB18F2-0118-452B-9F9F-94AA1FD95C26@icloud.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <DADB18F2-0118-452B-9F9F-94AA1FD95C26@icloud.com>
X-Mimecast-MFC-PROC-ID: yQplsL-1VAku_j8BfXB9_WX8bwR0-lGsW1PsTjmiOfI_1738014939
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: uSJ0X0FlX2AexvtqqoBOqlANPVR84HfX0_kdVdnmdc0_1738014942
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.210.45 as permitted
 sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

I was wanting to try my hand at installing Arch

Will arch work on a old legacy machine?

instead of=C2=A0 throwing away this machine that will not run win 11 would=
=20
love to try arch on it.

it is a Optiplex 755 duo=C2=A0 with 6 gigs of ram i currently have windows =
10=20
on it.

also where is a good link to download arch?

any advise or helpful hints would be greatly appreciated.

Rodney


To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

