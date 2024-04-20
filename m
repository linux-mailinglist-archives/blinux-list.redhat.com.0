Return-Path: <blinux-list+bncBCLPHQH4XEIRBW6LR6YQMGQEZRTGHLY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mail.lfdr.de (Postfix) with ESMTPS id C26148ABC47
	for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 17:57:17 +0200 (CEST)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3c5ffab3db3sf3784100b6e.3
        for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 08:57:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713628636; cv=pass;
        d=google.com; s=arc-20160816;
        b=G7WaPd6k5f+9M1uHyBP1LGR/RuFfSj63iV1DUIVogNRtkq+pPCohB8b6zlL2dEWmST
         QQSt4JPpZlF3ThE0g0KONtXxC35Ef9qhXYyoIEq8kDi1jibbQOu/FyMs4xsK4qvpJWam
         anewBydxxJm9cogp4NTbo/KiKluSczNfLNalN4qpkjjVWPlHKNEHfI044hjJssqIF57K
         FD8fFMSOrbp7QAiWlVtXtiRQ+DoqitLHf4+x13u3yYKZ8g2SUhhB9tjdR8noBBE4GSdA
         QYvxWUN/6y7C9iNX4uRalO7YSGqVB3Xd/AzaUr2/mVH3COCkbooCxshpGv+cqgOln7iG
         tKkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=l35r4rulyCXL3c7n14iqbuBIWSHHxZWs36sblZwKI6M=;
        fh=ZvIc5RXdkqWOnyfn6PyYdERpCd6HaheyuL6FykhPemA=;
        b=msrnBbGkSMBlFso435JHLL3if86JDlfYqIEnP9lJim5BYiXMZ3EfP7VDx7nlO099vZ
         UQlokmAR2nwyiLOhMvqnP2W1viSDFBS9q+ln5TUmxTw64+UG0bEYA/b1Mi4dXqyqeRyA
         +Zw0F+ZDSvAaDWAIaXV2ogrdbwGZ6gp8+xbtUaYkvCioNG51+v0YwBDPR+k5UEPL/Lwb
         wOjOXEnvse62pHw1ozf/A3wTG3L1cB4PMvjd8JrBH6/3vXx4hrGvxJgFCExmuIb/w5FF
         MOWALcJ+cQ05pYqD0bui0Tq3RBM5mvUGS77P6IkT/WU/sWKAqNE4pPQdy2gsS5K/oc2u
         ztCw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713628636; x=1714233436;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l35r4rulyCXL3c7n14iqbuBIWSHHxZWs36sblZwKI6M=;
        b=tFY1QwEKt+Bs/f7x+XXdhi+Bj1proH0KrnuFGE2XUX0iRCWVBo370AfIpWjWIrEQoo
         aO9hAgtIWjRa7bEyrknmX3jgSLCO8jIlJ0MB2pe1ZAEiOc81NvTi2xkN/GMgECPLVzdb
         +xz/yXIFl8vFHD6iEr9DtnoF7abv4DMDAfZwdSB7bwh6ifWqGryDdth6mw2pi0iVR2tb
         i+lDQqwEq9w28pL+eD+bPivHAe0Tn/kXWfMuwiOf4gB1o81pzGt4ibKLoRa6uSAMQrFM
         trBp3cZ9ZY1bW6lm4c/UCKZB5YqfxXEq8lbUwZ4KmKY/x0Oj3NZFL/2zRTSaUpHeWQoZ
         Un6A==
X-Forwarded-Encrypted: i=2; AJvYcCUdlHPkjWtjUjG48V/2+eIdRsmvUbGwKAd2MQFxJ0YpcLGjF51FFTZRgxijzwNathvI9iQGQtlZMM9av92y4/WVh/Iv9iMZS0WV
X-Gm-Message-State: AOJu0YwZeZikoOWE9NBfL5yNGtev1VaC/MU/4/sRVUCCUPY4jAc4FPPJ
	LQ/5qy7G3KkQzZrWRK4ihE32p7y5KZypgzVh/aC6utEzxQdUkdrrH4zuDEHVgvs=
X-Google-Smtp-Source: AGHT+IGTlvqTvj06Wb6O4PmkWE2zJ65FhNJW/Bd5D4Zrx4aIMPfTVemZyWbV2JL83yFWtM4q08MilA==
X-Received: by 2002:aca:1010:0:b0:3c3:82c4:4f96 with SMTP id 16-20020aca1010000000b003c382c44f96mr6336954oiq.28.1713628636254;
        Sat, 20 Apr 2024 08:57:16 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:199c:b0:434:ecf9:f43f with SMTP id
 d75a77b69052e-437bb3d4d38ls18473531cf.0.-pod-prod-08-us; Sat, 20 Apr 2024
 08:57:15 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXQhQrQ1fRokEdQmo3EUlmR9vubWmkUkkbdA5mJycI2eExBA5xwuntJ5+dpDOdrKvZAJvDXu3mNiGgkhyus7qRrTjeg5L2kGt/ei/Yf
X-Received: by 2002:a05:622a:164d:b0:434:c13b:6f37 with SMTP id y13-20020a05622a164d00b00434c13b6f37mr5850113qtj.20.1713628635007;
        Sat, 20 Apr 2024 08:57:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713628634; cv=none;
        d=google.com; s=arc-20160816;
        b=TJ/UO+Xd1bvvqs2lleyYDu7UAn5qIPja0Ttd0SVh3dcfZghH4ynRxgdUvwiJZhVpUt
         41xuWW06PV8uX1eWXjNqRO/p/pArSzdEMFm4nf3G8EKpJHtNnP+x8qOKY60cUQEgBgnO
         S8Ob3Sgpco6Y7ZA2/iFCSizn4KA+PSB5Pkj9QOvjBB0j61mzModePiKyok3hJMUOg4r2
         p1CiuChyLWzyEZ4O0Lx+1x8rc9qZuhLY9ln3x3ZYu9yKq8jJvtfhnQ7DNHI7MckXfZ0d
         WNm3zMOR1Rop9G0+YtJ2Erc4WgXIzsLnDnPAD0OiCEy8nRzNx4ayK7xg6eq0Thdl2zbU
         q0eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=hQEDmm3MctFd7glhZMxuRuxjES02Ce/H6oUetKKEkCg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Qjjx38O/5a3xpLdRWyVV2VRdpvxPGc9tB7VaaSiYoRMWQiRfHZTbLRWBQPAYEYiMxp
         756uSlAR4Ld3HJdO8GzFSgjEwrNgq8r9j4x6EPWJtl9/DH66TZg+eCM36ujD7SYYO8M5
         jdkhcDFjsSkG/OuWDzkr5ebUnn4qGCiDNUIILH5Z2RIi4X8ew/JbnmyLpjQLFmj5tKnv
         ZcXILJD2cwGpYlSwqsCZXEdJze3A0QQO/h3s4AWu7ycMV2B3OUAHXtSPfYd5e3tT+XbM
         CIQj84os16y7/9KMbrP7Vhy00AK7Q/PIKqtUOZ5vH+VWrJIy8QSLSHQAcgt5ORd8Kq4R
         gtwA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id z8-20020a05622a124800b00437b4804cefsi5358027qtx.173.2024.04.20.08.57.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 08:57:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-574-gmQcmMQBNCO8Hcb_XJ7pcw-1; Sat, 20 Apr 2024 11:57:13 -0400
X-MC-Unique: gmQcmMQBNCO8Hcb_XJ7pcw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18821811027
	for <blinux-list@gapps.redhat.com>; Sat, 20 Apr 2024 15:57:13 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 14DA643FB1; Sat, 20 Apr 2024 15:57:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D047643FAD
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 15:57:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 785943806711
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 15:57:12 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-617-XtCoMZZ3PNGdeCd3sxQplw-1; Sat,
 20 Apr 2024 11:57:10 -0400
X-MC-Unique: XtCoMZZ3PNGdeCd3sxQplw-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 0CEB332245
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 15:57:09 +0000 (UTC)
Message-ID: <51c07b57-049a-4256-a757-0036a3355c30@jasonjgw.net>
Date: Sat, 20 Apr 2024 11:57:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: writing yaml visually impaired
To: blinux-list@redhat.com
References: <ed94fea5-26ca-41f4-b7dc-6b090aea0778@harrastenurkka.fi>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <ed94fea5-26ca-41f4-b7dc-6b090aea0778@harrastenurkka.fi>
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


On 20/4/24 02:04, 'Elias St=C3=A5hlberg' via blinux-list@redhat.com wrote:
> Is there a solution for writing yaml for the visually impaired, e.g.=20
> docker, ansible and cubernetes use this configuration language which=20
> is very specific about layouts, is there a converter that would=20
> convert the basic configuration to yaml, for the completely blind

Could you describe the problem you're experiencing? If it's indentation,=20
you can use a braille display, or configure a screen reader to announce=20
indentation via speech.

I use a braille display, and I don't recall having any issues with Yaml=20
files.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

