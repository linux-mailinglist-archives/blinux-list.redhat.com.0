Return-Path: <blinux-list+bncBCLPHQH4XEIRBLGYWWWAMGQEUZXU3NY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF2D81F838
	for <lists+blinux-list@lfdr.de>; Thu, 28 Dec 2023 13:38:06 +0100 (CET)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3b88ac1f09csf5836382b6e.2
        for <lists+blinux-list@lfdr.de>; Thu, 28 Dec 2023 04:38:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1703767085; cv=pass;
        d=google.com; s=arc-20160816;
        b=XqwzcR6S7hQPAI8f6IIT0v2xxTp6Vc+GiLLSmusInQ2o3I70JMk03kx7mWqhkpFKDC
         o21jNVpUk/ZAPKa/y+Ce4XEnPftlaSgwLDvvXk0nHAVvClE0C/49Ye37am3L0lGtbGGj
         2qiBTdxuP0RPpnnVg2PPnasm4WmCqQvnce8sBWx/XRoKChGLBkuiXDA/i6jQzhCwTlsn
         VBMDt5ReIhYcxzAZJf+uz76508CW/0vHPJG6EgHGzKNQWCz7Mxmp/CphrA0wu7dH3zcj
         4G0EMJ2L5abzE88tJj2yg2S1UWTxGVYVASw1VqFD0ZzW8HPoxCT1f2rMGgfd7X3/fE6Z
         bMsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=azh7Tb2jzXVAQ0r5cOCW/qhH+THSRDvFdtYkt2eNeKM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=P7B0ghgGr6R4bRQPhTUfYptNzqOfSZl+jRklfXksMAT5Zt9t656jNxdLF6Xd68eknV
         ZzH+LnpCdkGTABnXzHHzQ3qIg0eWpSCWOXgvdZhcDreROD6wpPLKHVAkQGPvsl6jKx5g
         GYAbHmkPzF6eBwn9SeoGzFz6naoV+/sbMogGTxP3ThRRKmwn32vT0OwwwU+Qa+a9jH1v
         M6DFFNDl42iPzv4FqVxiwt9FTSLrL0u1aDq6YJP1Fc5YHGdl3vQPTP8YXPIv4GE013TL
         Ri3AWDXkWvYvzeu1UEqAn6zVpfo5CDRlTBpaKjaiwfXyPgLLk+1D7ZZTP/EOU2r3L7ru
         ecvA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703767085; x=1704371885;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=azh7Tb2jzXVAQ0r5cOCW/qhH+THSRDvFdtYkt2eNeKM=;
        b=mRrpNtAqd7hsLq3hsUzjtALkg6nkwfRibZJoQb3h0eljFUuyedCVDR++Ue4JLofyWa
         d0aiO/OVDxFtposXSOQup2aD6JeOfxxhRV0xVGKDQzRdYmsGcWkNUW6kRXQg9Uenih4A
         Be684s0FFA1CdWtxZz9vsHHARlFC2t3ijWfGyiyguVcSb76j3tYIZ4T7GVvo1xSU0Sa9
         b7ZchAQz5T2qOGEDZ5hdg0Mal8QlWyUfcX5I44LvrA7zU3wqGtVZ9LSFhlkIMLLluhQH
         473JUZesFRQTkyvQ9OFiCYYvOF/fVs9HVnmg0DZUrjAXkiRVM+ynyTdp4/8Jvi4Iuu6w
         ZPwQ==
X-Gm-Message-State: AOJu0YyiG5kSnMaEATjQioIcvRdCLZ7EXB/4tjzIc98yVDID8nSBM32l
	WCKtPk74vnzxw7aHsn0+eHUxfw7oHZkBGg==
X-Google-Smtp-Source: AGHT+IGJ30gBn5P4sV6RpmqVx00qFnag/f752yZwVXuU7fdGqhIddE1gU9jZQhN3MeZCyuahx5bmJQ==
X-Received: by 2002:a05:6808:1289:b0:3bb:77d6:e4fe with SMTP id a9-20020a056808128900b003bb77d6e4femr10105176oiw.97.1703767084854;
        Thu, 28 Dec 2023 04:38:04 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5c65:0:b0:67f:744d:8b3e with SMTP id i5-20020ad45c65000000b0067f744d8b3els177440qvh.1.-pod-prod-03-us;
 Thu, 28 Dec 2023 04:38:04 -0800 (PST)
X-Received: by 2002:a05:622a:2605:b0:427:f2c5:6d7e with SMTP id ci5-20020a05622a260500b00427f2c56d7emr1901425qtb.64.1703767083892;
        Thu, 28 Dec 2023 04:38:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1703767083; cv=none;
        d=google.com; s=arc-20160816;
        b=QxMp8QMfFb9DomBFHoAfEcksldnU6OZ0ss4evDX2sZv5dnMd1SqWbHXmO/kG+g6hQd
         IRZ2H3aGfZIZAHn6z5t93DuNztBy4EJr09OwuKtI440PHyt52fR3dB/8GLCxmP9EPpwX
         YrO4JH1EpBFfWxlAqelySHNHBq+rTDGkCutZnaQ5tqcq7yy7OhVi9ACQuX8cOCCOVkHE
         87wjZfmcByL1mORoADp/7cryToZxYrPqYFj/vVK4iT1RHsPmK86cxPhDTTFB2KI+R1Ab
         LutGYhPIGOkvJbs7PYBnGR2By5ZphECIrdOjp5vP9o0rTPwHJU2R+iJrP1WKSrhcDitl
         IdQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=BTRisY0RlALY4kD3XoTDFJRXBtedzvF43jPM6ntM3QQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=DonMddOk7jB1SLjnA9y8camZrLZtf/hh7sRL/YyAb81aPlsTiBzHj9bpu1oiFb+9DY
         Rtbgo7jvgCleU/H6Way4aJurcbyFJ0aIew4O0GgpnX0bhy9r0J8DoJG+XRcChz85IKcd
         /XBH56yjDJ4LB9X4Oy471hqrJvjsEoOs1uu9DtGY/zYik8w5dci7CgSztzZu35k14PMG
         X+22o/auQypKMAfWhs74VbI56wDaVy68EAk96WF6vSTS6ADDZwKfdB3OOqGgOhtTUmS2
         r8LDBAHZj57wFz1TwxE/SQ56T08x6pfEcDrb1vWKO6LwVhCb9Aavon1geYlxT3Beq6uO
         YpTQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id v34-20020a05622a18a200b00427fc055236si751454qtc.365.2023.12.28.04.38.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 04:38:03 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-498--0cPMziiMWioWFM9nhnAZg-1; Thu, 28 Dec 2023 07:38:02 -0500
X-MC-Unique: -0cPMziiMWioWFM9nhnAZg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F3839185A780
	for <blinux-list@gapps.redhat.com>; Thu, 28 Dec 2023 12:38:01 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id F0AD751D5; Thu, 28 Dec 2023 12:38:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E92CC5190
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 12:38:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7158835146
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 12:38:01 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-467-3A-9eghMO2aPovgmJOv_tQ-1; Thu,
 28 Dec 2023 07:37:59 -0500
X-MC-Unique: 3A-9eghMO2aPovgmJOv_tQ-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 7ADBB32029
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 12:37:58 +0000 (UTC)
Message-ID: <d28137ae-791b-4771-9efb-9c7705383587@jasonjgw.net>
Date: Thu, 28 Dec 2023 07:37:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: a question about email clients?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2312280043090.4143862@users.shellworld.net>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <Pine.LNX.4.64.2312280043090.4143862@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
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


On 28/12/23 00:56, Karen Lewellen wrote:
> However, because he has never used alpine, nor has he used basic html=20
> in gmail, he is basing the expected sorting on the standard gmail=20
> process. that process does not use folders at all, but labels apparently.
> as a result,there are things I imagine alpine expects to find which is=20
> not here.=C2=A0 We are using imap for gmail, but my personal experience o=
f=20
> imap, based on dreamhost, still has a mail folder with=C2=A0 saved=20
> messages, sent mail, postponed messages probably spam etc.
> and an imap folder which has other elements unique to dreamhost.

Which IMAP folders exist depends on the server. Whatever client software=20
you use just lets you access the IMAP folders that the server provides.

You may need to subscribe to specific folders to access them, depending=20
on the client.

Likewise, automatic classification of mail and moving it into folders is=20
typically accomplished by the server, for example using a Sieve script.=20
In my case, for example, I have created a Sieve script that=20
automatically delivers mail from various mailing lists into different=20
folders. Suspected spam goes into the "spam" folder, etc.

If you're using a commercial mail service rather than a server that you=20
control, hten obviously you lose some of that flexibility.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

