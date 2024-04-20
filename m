Return-Path: <blinux-list+bncBDM4LSNO5MHBB34QSCYQMGQEQTDHZKA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEC08ABCB2
	for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 20:24:49 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-436f18ed8a7sf43995821cf.1
        for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 11:24:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713637488; cv=pass;
        d=google.com; s=arc-20160816;
        b=VZ6jeais5MdnZYRg2COVreVm+1Wxg+YU584NGExNRB8tEuJOZjPl4WvTSYb2soN/c8
         B7vsN1h/oqiMovT3TeLf+7WVZ5lJVOBxxL3IOR7T2p8AeWZkaMqJ1fDm403ZibMKEi7r
         +a88MmuUfeJATd6cA6Y4AT3XP9P1ZvYM7oy9CpE3blP9fCHysyia2XDAfCF7e7i5DiMA
         xSLOkndNbfAOVbzXBXxmgdlUcWdx4gyTL4u3IrIF1t7bYpmw1eGGOFh7VEkGmJJbGmgO
         8PlGqRmcYPTxIqenB0ZVwNKTgxcrcAdnTlIktK4cD2OoJR/GMBf7nnjJ+PDnQzKLPvg9
         tcIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :ui-outboundreport:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=qpV7JhF1rXFlNMtrbeLPbtPCipe5wnkSb8/QX4EQfRk=;
        fh=n8RwCizwqMSHS/KJwhV3+JKFJKw+oVSTmPwMcNa0JU8=;
        b=W1E/SWJFSIGbFz0Xs+OA3WuBrY1vlYWOeA+KeXFWmbuaDlgS4EvikBXeyr22FOQ37l
         nte55wTAUFEFQsRjsx/+B+1MgEQok3HSsWmtz0ST3aW1wF+eANhYkZBlXez+BNCJAp4Q
         ctoQek53wifbbeQtb8eV+QsWeWOBUfWUs5mPH3YfpzN0tuzo+szlZj0emxP8q1rit2Ro
         tgT0pDqC91Sr7iLppKHI63sWsehjToAJUg1Pd+cWGAgR+u+dBqxOYk3/aviUBnpIB+iy
         pERdM6wJEwy5zcFzyFp/IlH1yY8Ulrg2vJCmw8GikTPNKQHrUCk1d8OdcJgFE5+fIR1/
         PfmA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713637488; x=1714242288;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qpV7JhF1rXFlNMtrbeLPbtPCipe5wnkSb8/QX4EQfRk=;
        b=ekReq82uQJFDh0KC8C+aVcn0h7yk3T3ki0154Dii+zQjK/Ocg0j14v86bbi3RBaJRH
         ZRK8t1sSe56Ogy7T8r+YvH4C3lCdmHFciPiFk5NPlbKyCjjJtowkPYzKWiJU4tqllnXp
         5Qb+50X1Zn1vlItkOSPnIY7c7roO5wMc9Q+gvyILSbizXEYTH7L6F2BiW+0yTZlpT5Rs
         iYMAvBa3gYyian/xshr1FSBfOUErTPn97JkmZTWMkFVnX5hLKnULGMUtAQ863SutB/wQ
         croA7McE+Ut4+JXzTWLFYS4xyUhrbVTJ+NPxBGLn8U9ttcN7UzWsPbpFlG9LX81SE4X8
         pKqA==
X-Forwarded-Encrypted: i=2; AJvYcCVM7+/6Qr6KtHIxOXxQM2CqDFKtGys/fn9CDo22csOW3uxBCxmQzPyuBJPIDJ7YksEzSFRykxhMpdRvE8J8uNlVmBAyFZBFQGO5
X-Gm-Message-State: AOJu0YxLmLEhKrX8amIEYTc74CUarNiKWENIDp/XaWAkFJ+C2OJ56IAC
	RHmwlw57wjQRFcqXOrOr7ExexXyAQcL0GEGjTpkTyMOw/h2y4ioFUIEWFlgV3XU=
X-Google-Smtp-Source: AGHT+IFXksJ6Yajx44cccBEICIp2Cwklb28U9YhgndGQmFS10yk49KYJF/Eg5rY2CPCtHhfxi9lymA==
X-Received: by 2002:a05:622a:46:b0:437:964a:2667 with SMTP id y6-20020a05622a004600b00437964a2667mr7270689qtw.8.1713637487774;
        Sat, 20 Apr 2024 11:24:47 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d05:0:b0:439:7147:ab57 with SMTP id d75a77b69052e-4397147b69els9278701cf.2.-pod-prod-05-us;
 Sat, 20 Apr 2024 11:24:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXBI4gD3CznFWelMHVJJB2IJXUtder8zpixGbe5y7YoCR5yLr9t3y8+dtlK6ZFPaMwlCBSwjCGw8I37uRnsVS8eTDzrQfc1Cbyf6pdH
X-Received: by 2002:ac8:7486:0:b0:437:c7c3:661b with SMTP id v6-20020ac87486000000b00437c7c3661bmr5464120qtq.68.1713637487070;
        Sat, 20 Apr 2024 11:24:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713637487; cv=none;
        d=google.com; s=arc-20160816;
        b=cPkr6SLYe3MpTljlPsjhc3xUgOXwPKULSY8xjr3rWb92nZICMH2kV6wgim//kGIsae
         7qiQWdelDQx+DmVXizfPp/rtTMpDoK+goVdGKVd0d587E1RM4JTC0MkI9s5Hsam7erD3
         xzRYN5l3PkvD4PMsRnmrU9LMj5Xq5Tp94dlM/DOT52L9WWzAcSfDRrCeKmznXxhxQwxN
         qpXk2IazL5UvPPSEC2AlpIeAM85j8/3WmKmRMnZGUZ5It/Xz8QYzAoUaxSSgRbkrZUjA
         gxvbQzSlWuwRBGPuY3TT/JSbCavrBJ6mZbFKZoBB0vrDLk3+PMSQznk3arWCDQnnWNQC
         MH4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=T5hh8OXSTH6lPgc/2qagiFbbHAB6Gy6BYcgmhFvbpJ4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=jsZHhECMLv1el4bO3r1KaV2mJveOBTByA5tq3WUoM5avTpdWxdAh/31j+2eh296OXR
         arVVFJyJk3L7QfQGQqOvlXna1J8c2mnMekP1GtHBW/d3XOyk++4b3n2kWcVQZlmyPyD7
         bjzIL69Oy/v8w7hP+nP/Z9aNQlEF90hYO+bbGgq1gFZDBib7hP7EsLRpM/2jPBAkOK5I
         NcvGuvYSQcmL2XND+89dU3XmlujLmVpQqQi8e8mHrQjzrOVDc+AmaeIbVEloXlSGDGLl
         kyTeYJyuVi02jZbuh6f+V3h9NDRJi0CHeQDPKK81KyqN1aQFWdviAouR+mb3SRHE/PWC
         2pmg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id t8-20020ac85888000000b00438528b1a8csi3781379qta.348.2024.04.20.11.24.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 11:24:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) client-ip=74.208.4.201;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-548-bWQyEFTxPOeh4jeOgEwM3A-1; Sat, 20 Apr 2024 14:24:45 -0400
X-MC-Unique: bWQyEFTxPOeh4jeOgEwM3A-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9E3238059E0
	for <blinux-list@gapps.redhat.com>; Sat, 20 Apr 2024 18:24:45 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 99C90400F12; Sat, 20 Apr 2024 18:24:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6204A492BC7
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 18:24:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 774618884A1
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 18:24:44 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.201]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-357-kc9OnsY4NlKr05gEkUZD8Q-1; Sat,
 20 Apr 2024 14:24:42 -0400
X-MC-Unique: kc9OnsY4NlKr05gEkUZD8Q-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus005 [74.208.5.15]) with ESMTPSA (Nemesis) id 0LzdMC-1slSDz1zne-014hAC
 for <blinux-list@redhat.com>; Sat, 20 Apr 2024 20:24:41 +0200
Message-ID: <f8abb0f5-0fb8-4ee5-98e3-8b2e516b807e@mail.com>
Date: Sat, 20 Apr 2024 20:25:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: writing yaml visually impaired
To: blinux-list@redhat.com
References: <ed94fea5-26ca-41f4-b7dc-6b090aea0778@harrastenurkka.fi>
 <51c07b57-049a-4256-a757-0036a3355c30@jasonjgw.net>
 <865b129a-17df-4725-aa47-e48387a8f39f@harrastenurkka.fi>
From: john doe <johndoe65534@mail.com>
In-Reply-To: <865b129a-17df-4725-aa47-e48387a8f39f@harrastenurkka.fi>
X-Provags-ID: V03:K1:YMQC6vvPykftBUpSQmJDKvIBq8reHuNzvcYYp/Pj1uAoni6PQwg
 cdXOCzC8xoEzcsIPyE7EBpyhWgdno4s+sdHLvkkqowXAK8+NNy90ibzPGuTqXZvlWkUsIug
 RMQNE8u9Mw43rpL2HlgB0JzSsE/VF5LmnXY1NiGw+8whexqmY5ttQbTA9peRHV1nUBa5Ypg
 wv4Ra7K7xvL26RavBx24w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:N510LbbTCJo=;qzMahBCehZSlx/Tt1354Rz6xaGH
 P/X4GmRdH8+kJrFjDCaRq/DIwqtq+3DuppGo5EafWX+9gw5QeKgnT2XB4ZTmG6JDYo5jj0TH/
 uQlBynngmmkhAGzRni97XQrg8ikoG77rk4+Zr4NEEFgRG1lfvXdvI/paHZVXQMQMNv1HD0Lna
 e3J7dseEtItFBVg4zwwVPQBUrCXLHL9/fxyt2uSMd0LVf6Hn1pl+xoPocLXQG26ooI4sFX8Q0
 +OAtQ9FtUI+f6M4NYfUDkyAegrJg8PG+B4c7d4PJhncdCaILMlDDBTfkzHq53skTQHMW29zhW
 IiTIGJ2+F6j3d2uQ8hHYlYlaCkmaYYbw82t6hKSEaxgZ3SR354rr7vtRE2eO/7k1s3IjnA/NR
 Ae5unMzRzQjQk01zKOy3o3Ybb+R5FhRqUctzHLcM0U/+VLAKEFmW+/PoDsaj4+jJjnAL2z3vO
 S2cMT9MADaOsZPvEn68NG1Ia9cyxmbBY7IxejSUAmYOApBuHnfOjyqWuKk2CY8cxv2gjKGkTB
 67iUevk1f0OzHT9gs86y4eY+XzPZAF8vFel4bkzsGLO2/Eg9FJWO9axnsvsnOdvopj6rVJSAt
 PL+wI5T7LaufhbBqxwqxqJN6+JFmlJp+9oQRwDcJO2d6JRp+qY3rzG9/DX5a6ly2SBN9YgCjI
 zw+vjl930GcWGWuk12D7DxPkRcU6n2oQKMrHyCxtLVg7KnQNnIigMIbaUkg9U6hoNmj8+WyKb
 EmnI11zuIfmy5c0oDlZeg7bdgVDKpzdX4NoOKb2akgDskkiQpwrP+OLCMMudxiEhQd4njWrQ7
 FpHfA1RrTqVHKiwtRQ4x8Q02W6ii+9Xb9NtG+CGpoehd4=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
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

On 4/20/24 19:38, 'Elias St=C3=A5hlberg' via blinux-list@redhat.com wrote:
> I don't have a braille display, I don't understand the logic of the file
> layout, if the first block is for example four with a space layout, next
> a block can already be with a layout of 13 spaces, there is no logic here
>

It's a visual logic!!! ;^)

The indentation will be done by your IDE (block, flow ...), I would
focus on the syntax and use yamllint to validate your code!

Depending on what your YAML file is for, one possibility would be to use
Python and  dump your collection(s) in YAML.

--
John Doe

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

