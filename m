Return-Path: <blinux-list+bncBCV3N6GOXMCRBEMPW63AMGQEUG4EDRY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 89733960A6E
	for <lists+blinux-list@lfdr.de>; Tue, 27 Aug 2024 14:33:23 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4501aa4886fsf79029941cf.2
        for <lists+blinux-list@lfdr.de>; Tue, 27 Aug 2024 05:33:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724762002; cv=pass;
        d=google.com; s=arc-20240605;
        b=DxrPLt6PB29KV61t1qqm9kKF3CCq5vjyED8dbCGaOBg+NYnQxbmmTgm5lQAboXVvhC
         XT02JcBf3+5nyeGJIulMxRVwVfAQeTvb/g8NMKV80QasT6z4xydyDNRo1cLXx9t8zKiN
         bMfDZ0RrtPlC9ei/dkK9QjhiCFWGO3mIESTcOZJddoVfEvFr0VngYwML9McjgFPIPqGn
         1D/Iia0RtWmbN/Bu7V5mZY2o1qHBuXmEuSRz4kEkyuYOMxDhO/QxizHb0f72QKUahttC
         Gek5P6SG3/VVNE4K80AH+Yj59KV3CKS/wMaAnum9/23MGtEl81/P97J+0zZzx2kjmj5h
         1KqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=2oezxGkY2IRj9tO+W92ciVGb0UskFxHTruvGbsaZJhk=;
        fh=MCatP3vyeaiiBQL+gaYCI6xLf4XEcw/fGulh2Ahr9YA=;
        b=FHDyK3OJC8OQWi9h0269/BGF66uHLnsEH020TGrTLHxfEknage8Y3JhC7RpWcj26LO
         B8PVL1oCLsKoLTZRYKGxz/+nt0YkXgMzjuvWYodUPKn7DJ4+mBdD8DTiSMo6wFgP2hj8
         rtxG9hBtQ98HRsj5AJSiuZ6dqxpZPYqXObjbpi/x/OeyQzpWbS7o3Wg2mnyswA/svZhc
         xmMeKXtpm+OetO2yaAkw5lgXrVM7IWdNm5TTLDuaV6I4Ba0CYMrYx0oM5BZDJxWGT5J0
         UQmAyxc19flNQrPfErw9cvw7xr+rOVz6XwKpFWEsXQcZsD46DOlCQLB0NUdGjUzySHd6
         o7KQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724762002; x=1725366802;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2oezxGkY2IRj9tO+W92ciVGb0UskFxHTruvGbsaZJhk=;
        b=MsjeNfFAkJh1Pvv5iQcGMuBEXHxWtQXf30cixVWeVRtgOMuaWFBXgo8GHbvPkqyuDJ
         qSZOBx6NyUt2HBNQuAv5xofU+hIYYaxBl/RXN8Y0CKNP68C04EeUESn2rXgScp7aPyO9
         IoARPPkwyFARZRN8cpzcqOo40jV9mWySfoC2HtLj6aJ2hIr2td84ti19MO9jOa/VV8Gn
         UVaOz5T2T3MLp6YR6HYtZ4nmIdE9MNDQGwKpjIyxZzyjS67UOtWD5F0YAPFJoLtY+Elk
         MWos+HBj9IJ5sNQQaas1qUfX3B9hKQmvRARdaKJa8fNYUzrL44Dud/3+x21ST6h3n145
         jDiQ==
X-Forwarded-Encrypted: i=2; AJvYcCWWqxaH51l9MFBQBqUIC3EJ/VasdD33IWtgAX33EIDzEZBJ7vxES/MaDF8lGX3S53+dubNEZQ==@lfdr.de
X-Gm-Message-State: AOJu0YwaPB4XBR4TSk0wPBdR3nqNw0T2osK/J0v0lS0DB9gWdbYdQ+/D
	9k9neoAMxW5b1GcbZiSdTa/gMwN14G/tobmdkOw2XNnm3no7kxwjOLqv0OTutZA=
X-Google-Smtp-Source: AGHT+IH5FFE+MKHZHAVysOBwbzBuy454/CnQP1D54IbzzAESOiylPIB6PI7WQKdi9h/0aeUugmRTAA==
X-Received: by 2002:a05:622a:260b:b0:447:e3af:272c with SMTP id d75a77b69052e-45509d64f92mr122666881cf.63.1724762002157;
        Tue, 27 Aug 2024 05:33:22 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:2d2:b0:447:dec7:dfe2 with SMTP id
 d75a77b69052e-454fbfa529fls14358101cf.0.-pod-prod-05-us; Tue, 27 Aug 2024
 05:33:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVml4hF3WhcvyKjYKaH7wsNzhLaU3c+WXSm6Jd8WlhcBNeWlVGlccE0KsR8kDQYJ5Atc9cymd4gSoF2GA==@gapps.redhat.com
X-Received: by 2002:a05:622a:4a8d:b0:44f:efa3:2a4b with SMTP id d75a77b69052e-45509c7b69emr175452221cf.32.1724762001017;
        Tue, 27 Aug 2024 05:33:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724762001; cv=none;
        d=google.com; s=arc-20160816;
        b=oQ+1wxag6z5hoRHYFgJkjqOhsi/E0d1gH1PoNKdSBg36OqeD0yfdoPVyZnZQ7EvUr6
         mWL7uJnnB7bTTkMg+uUjvcJ1S/ZA9yG9V2hWf6XuBcD2y+IhvsP1Q7U44YVqHDHt8csK
         qqbofaSZxHl2AwPuHn5/Qi/4+dCzy5j9yJ8pkQBT4ujCtK9RkxCq4MHoyF9KahEaCt63
         HSHpp6yNktPlGJcIsRBMYkfcNYtQRFn8jlDRjLSP3eYirQITXbc2lY90FVmca8S+d+Dl
         CdQJFJbymIArGWbFU2U69Hjqpd967diRD574o7WM41cQHpu6uLu86urmXHk03IJJSTn6
         hJyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=6Y11szEdrjQRsAcbZ57ztZR0SKtEVBNkXj3HwG/oI3g=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=wP51YA6KExBrKhZYAxIEUmZuc6Klglj064d5Sg9PC6FZiju/XuMVju9yqqBUhxuqhi
         QWFs/0fBNVV0dKyOgWdFLuUh55TqZ3iOTxqClOXcyYnaiIlIgcB1kDT6GjR3qJiomHy5
         P2SRKbyT/kbnwwuKUJdNLc7IrsTmLrYeP/uo1q8ocacLAcUZpeaKhPIOWcs16cjXRy7a
         Dn6SXqQtt1C+gNrdu71zztfoukreJIaynAUpTnLRyMFmgbrVQ+jZreWpQxFRSIIBGPEw
         ZwjwQ+97f56yPGS+/V17x0gKSOBkF4O7rnmTRM/btmxm6cO8WA5jaF1pqiQV/aS7Exgk
         gn6A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-454fe0d0290si23661511cf.158.2024.08.27.05.33.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2024 05:33:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-205-NCLMW8P0OUWqqIAcWi37qw-1; Tue,
 27 Aug 2024 08:33:19 -0400
X-MC-Unique: NCLMW8P0OUWqqIAcWi37qw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 625D31955BE4
	for <blinux-list@gapps.redhat.com>; Tue, 27 Aug 2024 12:33:18 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5C6383001FE8; Tue, 27 Aug 2024 12:33:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 58D7830001A1
	for <blinux-list@redhat.com>; Tue, 27 Aug 2024 12:33:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CBEA51954B08
	for <blinux-list@redhat.com>; Tue, 27 Aug 2024 12:33:17 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-126--8X1Q2ajMZaSxRDJflCbuA-1; Tue,
 27 Aug 2024 08:33:15 -0400
X-MC-Unique: -8X1Q2ajMZaSxRDJflCbuA-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MQvCv-1sUqFS3AYB-00MgRs for
 <blinux-list@redhat.com>; Tue, 27 Aug 2024 14:33:14 +0200
Message-ID: <b7d0dc90-b882-46c4-b089-fe861f0175a7@gmx.it>
Date: Tue, 27 Aug 2024 08:33:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Grants for developing accessible software
To: blinux-list@redhat.com
References: <20240826195903.wwlxwqjipjjxnc7k@sprite>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <20240826195903.wwlxwqjipjjxnc7k@sprite>
X-Provags-ID: V03:K1:FGDJbiN7xswq+jLIRyrt2Y8u0ZMTj+BgAnx/5KmK4VVZFWpcrIM
 Abc1kP+axRa/tK8ggcArCABHr7NzO0OuzAgidCvLTJd00JS7Jbz9MrTmXLpBD8kdpUbfMKX
 Hk+1Jj3tWlqZhZEvBMqBfnDDC2HUS1YzJgwlYUWatjNqzzfVpotPHXIZka+UU2TlRFMdPmk
 7fpSycbjnhupiWkioqIyw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:FK5PXqENKOI=;k6Jg5Eu5g84PWfyFytDGPShoFcU
 ltmkZFINuQzvgCwoF/seLjgsPS+BhvfihIMZKjpHpE/Mc146x9QZV14qpdnIj1wDIQEFCQnKL
 54XWIG8+bkIRyMw56JXQl9+ADqHVraMVMFK5Bn1E03NsaxYrCNzwpbAbLX0xoQvhVEEqR5wCC
 3MjBZmBurb/HvC+o2orTg0yP7wqkWIGks0eJbtIjBLbeupAtTubPnkiO3cGdODILvYg8fG9x5
 /hEbiSMgyWIbCqoQBSzDBCP/3EKZJGH5O7boJ9GuSqHIFuKzPVhS7a4acb1TJcbn2/FX8Pg3a
 e8D687CQXfPkUVq3y6096Dk/m3W10/oz4og9zOecW5Q+6JzEzSOJa2pAEAv4zIWU+27mT8URc
 THygnugi4uOkDqZapsJkhhOupv/MVh0FpEJ8UiyI/dABMoksVIdaKPZ+fyABcBCq+WJTKHekn
 taZnp2FQLYCceEOlnWlK6wUUnlkNkYcs1L5GUuhX1Chw5egUXUAmiNEc/iXDXagz6hDRe+52g
 yw96hLsFlVjIeiU+sVfypdajaND+O5w88XC61Y4oW9Eu4PwataFo+BksT8WiKyijxEg2WB2ys
 Y8Aq2NI3klu9miTSFbm/I/AhMFiEadbsXBE9hjp9BaA26M+zvBnQaC/H4jU6rtAl+L7jzsm3/
 5uRkI1w7B33vRCzldvpHIDkUsTAxw5LlYdyFbxNooBt25Bo9YuW4qCLlqlXx9isqWlIflmd5g
 +tZcEPp7fPwqn/b5xrVxXKUgJXnWCyTwokfYAWkjXchM0iys1DKuKE+GrCo5OjaRGs8zJJAZt
 CrSOWB1NAN0EbXmej+SCCy2g==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

Well, I myself have used Audacity for about 15 years and it's Tenacity
fork for about a year. I use nothing but Linux, and I find these apps to
be very much accessible using Orca. In fact, although I did use it on XP
at one point very long ago, I found the Linux version worked better for
me using the same USB hardware I had at the time. My recordings even
came out better using Linux, whereas on XP I got a terrible loud hiss.
This is not at all related to accessibility though. In any case, I don't
find Audacity or its family tree lacking in accessibility. Still, I am
glad to see other options available in this space, so definitely keep up
the great work you're doing. Sadly I am unaware of what if any=C2=A0 grants
may be available, but if you accept donations, I'm sure plenty of people
will be interested in contributing to Nama financially. Volunteers can
probably help with coding as well. All the best.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

