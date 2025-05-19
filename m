Return-Path: <blinux-list+bncBCLPHQH4XEIRBPEWVXAQMGQEL4TMNCI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 8058DABC1FC
	for <lists+blinux-list@lfdr.de>; Mon, 19 May 2025 17:16:14 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c9255d5e8csf776212485a.1
        for <lists+blinux-list@lfdr.de>; Mon, 19 May 2025 08:16:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1747667773; cv=pass;
        d=google.com; s=arc-20240605;
        b=LsO13GNXN6fyWQFkIVSTNVvwdm0+JyfnCHVm6MHL3Yhj8a7+sC/CGoeeA+IwrjbkwE
         gB5btcF2YNwmn1PawrBAMyMladi5PgZlhVn3I37bsYmXxPyhf8sDALHxom2KPn/bz9jf
         EHxQHAPAK54zpRReKTE8aYhkjD70KV4EYtbEsDTXf5H/yYZ+bAt0Jhteb44jrlMQR+I2
         9pOR4j8zkSTLfN0KrV25zMl/sKLyx9Gokr+PvTlvxeAliN52f7XG22Db5Fg7lBBOHrwD
         lKFGz+dWpVRrpOKIF3OWZNOhSwdglXyKMQaWl+tPKuM2XZoeT4p9DP1yDjXX8HN3D+kd
         /f/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=r1f5HyBLjg+9c68irZuje9UOUpp+xi2ZQTUAxlN3Hv4=;
        fh=i0pJpfGPhw0eKNaZjTOvcxLWHMkIvt0tjN+lvop6rPE=;
        b=hH0th2Y9aZdWSjsr+bXmrXR/WCFICTtZ2Wu5PXAnGAhNGODZt/83crIPvArFtJcgr8
         H7T/ALA+a60Qcvx+1CluCj+UTF2O16+9Zn18VxCKuTifwf3VO9HR8/PSGoc9jISGySoo
         vo4l8ALbgHjQbCMBRZ8qERQIkC1mBHi9LP1u5SAJrnF5RrG5kudjXW9Dlmy6qcCPIMOG
         fbJJ+Y+T7WKjemlfaiojWcqx0BxfCrXdE6hL7g4QzmekW1uoePYNbnseMYnCEthk8pfQ
         r7ZTkumk8zbl+Q9uEnQWS9W9uNMUpda80KEtmtzoJxNAWIx5vS/M8EqA/AIDsDCpKHjv
         OLrw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747667773; x=1748272573;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r1f5HyBLjg+9c68irZuje9UOUpp+xi2ZQTUAxlN3Hv4=;
        b=aNUsGEP1YoDDZbw8ihHsXiMzMk+SOAzMPlxrt854EZVaHKS4bjdLsLwJy/o+2yKZKc
         uh+rNQ53ctd4cUIh+DK0ZXncN1CT13kJa1OawqMHsgCWv2ZktpMJbyJp1cZ3eVqwryte
         SbBsbseMtJUAMKp/Oa0Vr9x68pA8SlBn/e+HvdctbbWgRNXuEL6KX51dhToInWhSQwoB
         J2SWw5LkFj2gfoMyjUBqseG191izfE821Q+vuj/UEJXh26GFc/vbK+7P3hSGx/WGHhmM
         JVHi0j7EWgLkvwvLAzinuIFtVpWaz59Ni/tf5h31IZXQTj27mjx9YKMCYzVo8A1KPIcz
         zkSw==
X-Forwarded-Encrypted: i=2; AJvYcCUvG375wl2w4HlNBev8vDX941oOSs4t+lGy1Pzc7uBYk2OogERQr1DRTK/04kPCB293S0VU3w==@lfdr.de
X-Gm-Message-State: AOJu0Yw9aMEVrXzlyCDmTlIQaE2gTXn2eJSEtUWtWeGbPcIUwL45YQt/
	Johqm46z2FnSsr7Xzmo1K/7GsoqCtUQ+mzWP31y1TB1/011e/I2H1aHI9Db5OCmVAtc=
X-Google-Smtp-Source: AGHT+IHu0ku1MVzqXbKQ1kElNJBotIJwa5KA9n5sFhMOOga9OCQhREpgdNP1JRtC5iebD+FPS5kTNg==
X-Received: by 2002:a05:622a:4406:b0:494:99ed:1607 with SMTP id d75a77b69052e-494ae366cacmr193731401cf.3.1747667772834;
        Mon, 19 May 2025 08:16:12 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AVT/gBFAPS9EZYlXATowkBwPHXosqyZd3tpCQmhRD4UPvGqBiA==
Received: by 2002:a05:622a:802e:b0:476:da3d:a1f0 with SMTP id
 d75a77b69052e-494a13e3778ls42359801cf.2.-pod-prod-07-us; Mon, 19 May 2025
 08:16:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW2Eo47xbUJ/TsqTSUcuf0h+GtAlGzNspmNoVmaAMJW5g5KI5ZqKhFl+7kKjJh50bKWDwD9eki0PVfCkg==@gapps.redhat.com
X-Received: by 2002:a05:622a:5592:b0:494:b316:3c8a with SMTP id d75a77b69052e-494b31640d0mr241299801cf.5.1747667771782;
        Mon, 19 May 2025 08:16:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1747667771; cv=none;
        d=google.com; s=arc-20240605;
        b=SzB3h76D9li+qQvsMjozbBXbiHCrTPWEDSSQ4gZcAJgrDIsXbasrGPS3Lc+QLuD2bK
         8UDDPdzPu+U5xaFkvaduT0Vhs2ArC/TeEpk46yjd2vU+ipS+PEEYsj8gk/CLKCFZhscn
         YdRNJeDVupebc8SA2ESRztCLAbJ1QV7n42zd7XtvuMBDFLCwQYOKyCrvXB3pmWF7L2iN
         Cmx36QXVHgEBW0vuAcjozNMe0hguTcbupo3MTvtcuGLRBKJlkxjrgMHkVQzPfZXSKGch
         a0izdZEF8Uvu29TRqP2+uZgKvnfhtOJrx0SGppbTKlREZy+wNW62MlaFmRUhSAWpOSKd
         jCOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=xSb7eyoxZJcgE5KBKgad1mv9qGydeHd2GISzlqADwfw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=gnPjSkjlQBwH2Ws6tZpT4LjTVX+UNVr6u4t5L9s1oiMSJgX/LNjHv6/X+dNPDs1Ara
         VuNLpc6+rDp2s2Eg2i2plukBtR8JJxYFnXxA0XeUtLNAfaFq8BsDgJCqjyvmo7sthxqH
         rgknMTbjYzfPD7Whxes1SeWKvKmwcc2pdvUXoGO5xp+06h/GEMhj4eycoFaT95PYNpoB
         kfbnSDAfQxjSgPwYCD8hW91Q0XF2QIiiPMQePvEUQU0IQa89DoFSYJJoeMO0lAAXBFfR
         RAphzmyTXxWsAlu7r5r6B7EBxvDY1NgjCFDU2oWplwYdhQDxVj7Md8wP0PeqFP54jfj2
         fypw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-494ae5603e0si92262171cf.291.2025.05.19.08.16.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 08:16:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-509-pVcPT4o2Pve_enAG7Edxjg-1; Mon,
 19 May 2025 11:16:09 -0400
X-MC-Unique: pVcPT4o2Pve_enAG7Edxjg-1
X-Mimecast-MFC-AGG-ID: pVcPT4o2Pve_enAG7Edxjg_1747667768
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 751B919560A7
	for <blinux-list@gapps.redhat.com>; Mon, 19 May 2025 15:16:08 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 705E519560AB; Mon, 19 May 2025 15:16:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6CC121956096
	for <blinux-list@redhat.com>; Mon, 19 May 2025 15:16:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0CCCB180036E
	for <blinux-list@redhat.com>; Mon, 19 May 2025 15:16:08 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-626-IAZbKd0nMQi3YjKHrVq2FA-1; Mon,
 19 May 2025 11:16:05 -0400
X-MC-Unique: IAZbKd0nMQi3YjKHrVq2FA-1
X-Mimecast-MFC-AGG-ID: IAZbKd0nMQi3YjKHrVq2FA_1747667765
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id C8F3532159
	for <blinux-list@redhat.com>; Mon, 19 May 2025 15:10:10 +0000 (UTC)
Message-ID: <4229c246-2ac7-42aa-8e50-c29e5266a654@jasonjgw.net>
Date: Mon, 19 May 2025 11:10:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: external drive
To: blinux-list@redhat.com
References: <6F40900A-CA39-4201-AC94-4A8ABDFF938B@gmail.com>
 <e4be449f-d224-4b06-babf-60ce2f9db887@informal.com.br>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 xsDNBF/xBRsBDADlVy0XG2HBtn9QyhH5yfQ+V5QwBUTBCMvguxy7FP2FaRB4eWfzEcqlK6vm
 zg9+26qlMfrnLqsv5G2XAbPYuPMmPSnQgRxXr855Dx369wz5lwioAEaGAGu9/Q8nG/y/9svf
 ZFkA67LDk7au9AN0+vZu7E6c0IhmirvjN9BxRLvGq8jCNdrR9Oh36y3UevZnpFUBD8gOqdPt
 mJgMXbfYSrEWzEqDcTOlG2o3ppyXGaj2aLGmyGUtnqK4DWnYCfaPyZaKJ1V/7SvVJ2gXvco0
 BEeP06rnbJf59ssg3mFv16XLxEEwPjG8g8BiZ4Csf6mGtIJ1HPSc/KNQegLxc1w6sOzs5TQo
 pYos+kT08lapoBwXhqSKjEN3swdh30v/s46CxFTcD6ksthgDZeSftNbcD8r5u94vIVP11GDO
 nPRMdZQIcyuNpKl7TqYb6pZOOWq7Yxmva77rV0WDmIrUI/V14ZN0r+PheGgp/4mBM/sueDMh
 /6ea5l3GuTepsOcwtSMZb6sAEQEAAc0gSmFzb24gV2hpdGUgPGphc29uQGphc29uamd3Lm5l
 dD7CwQkEEwEIADMWIQTqUmUTWtPL6lh3Yvx4WzV0iFry7QUCZKn3lgIbAwULCQgHAgYVCAkK
 CwIFFgIDAQAACgkQeFs1dIha8u152QwArR9WmCmFL9r6Kna984Dg8ZE/aRQ9L0I64wmWTrGW
 9OO2a6ouRU1XdqkA3D1PoZzZ22Czcjn5BXZkZIOshLWIEnL9Ey/Pj4Y4+PanKOOU1tKsF4bA
 kteR7RajGwLiVsjAL3E6SB+HS2NwuA99/tuIOiumnR95Xrf6Fd3RTPMCoDXlv6hBDg1lmV5x
 3MlSO0dgRZNahpJ+syIKy74FdGKWrZLND1yB0Pmz5SvgPglvGEAvBl5EgH0ha/s8AT/fTYCb
 GSH0FPU60RWXQdG0ou0mOnUB38nwwxoID6KKw7Ba76IZgex4K6QZiN60wV5zNSTQi64xyu2S
 m6Z1RC40tKPrEkEfhAVamvF532FukF5oFpu26K5RZmR7hIc20upn1NigJNBqbFd92MptGktZ
 0jC3JSW8nEuRfCPp0pQazbu5M14wUKsjk5adG5tD3FnNicE5k1wOTMJIQPMl/X9KDipkmxDH
 4h/wB4zD/Gqn0rz3KzV0KucwpJm9vfDW0sMm729bzsDNBF/xBRsBDADd/3voDU1gk90zYHXG
 X0KWaAztsmCtqG+hNFShiEX9aj/y1nX1Fdwmm04ZiLPLZ0Ogsa5zDrikTnabYxo6z4Ej2TAR
 OMJLEo5YiT3J8GGHljqVh+LuGBNgF8hnrTvDqvhHL4+jTSIdeSqa3FhL9jiCfDpSAWABDHM0
 FxGMl6lMiS+DhTpRQs0mbJ9Sb7yYBoYzt9moFG7+v/dH8nG7C/hy7bqOPTeBNCUj8ceOQMkQ
 yVnjuipaxj5p8YxQA+SNqSTAA/SNoYs7v0Slr6oAkTnM30p+r35zX3RGRIqfduizy5Uo/ZGd
 T8XOfE++0fI4A5iWQh7q06Yn1jG/5WY1L0N2wgKF53SckdWYMHa9hrB+lzH8azMeggsgrOW1
 +SdbpF6kKSGTiQytchadJ+q8xtiLiDtbNdV79o7OvgrTVW2dpJ0zDyqdUvwQKHgczd4GFqDj
 FOTDpzOK92lQVswwG1RILdcSe29g0rdzrVEw7Y+RfFUn2Hl8fHIOuvtvyPqdnb0AEQEAAcLA
 9gQYAQgAIBYhBOpSZRNa08vqWHdi/HhbNXSIWvLtBQJkqfeWAhsMAAoJEHhbNXSIWvLtuMIL
 /0eWg3rtJqq57TVvSKZKtaBBDtxll0FFykWkIQKSzxoLBA7GcmPz3avp0NgzQdHOEjIwQ2Dk
 IWO0iPyGPrzjAM4jps0pEkI6UofXWDpPuBjY7rYqnGcp1iPsAdaaFSYMQYUgXaFEW/9lws2s
 wipaUkUiqOT0tCEv+9NF6oB/GRJo9q8K2vZ3Hv2/YFQPmFB/2Qu6pFjCMHs80rscoIO+YLlP
 wV6+FzkknTewSVrGRJ/OYKCVdaIu3GD5gZkeDqMgAHZ4gy41uX9nM2dxv2+1wAUaQGwLL30K
 WvRqI9jAA2K3IPGuTPHIVK6ADNymKJ8Uw3yJNLbsthEnjeXIvkQ7PggQm/qyME8NNS6mVSPW
 TWzS3JUV+O4jT1qBM6r2TnCBdxOe/NVcFR0fYwxXRl3+n/dehU7QAWMDnqvBRQ5SMTZyBK1K
 76SANvwEOvlkI2yEBs8mL3WxxPuliybrtxz4qF6aT/D3NSadxiuS/FXl5Xx55n4jNHenPpY+
 Jlx6Ar305Q==
In-Reply-To: <e4be449f-d224-4b06-babf-60ce2f9db887@informal.com.br>
X-Mimecast-MFC-PROC-ID: l6cWQZRyCnIqMxHSEKqVGeKvKwb4XUcdUmnLSAmgjaw_1747667765
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 9AH9Fn4zw9-U_sIB2bW-bFcVjARgjQ7PEXZdnSCpSQk_1747667768
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
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


On 19/5/25 10:26, Jos=C3=A9 Vilmar Est=C3=A1cio de Souza wrote:
> Did you try to mount the drive manually using the terminal?
Definitely try this, and if it doesn't work, check your system logs for=20
the error message. Also check that you have permission to access the=20
files/directories on the drive (i.e., that the user ids match or that=20
you are root).

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

