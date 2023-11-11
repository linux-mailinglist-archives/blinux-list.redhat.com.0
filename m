Return-Path: <blinux-list+bncBCLPHQH4XEIRBQUGX2VAMGQENRUBXJI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6D87E8B0D
	for <lists+blinux-list@lfdr.de>; Sat, 11 Nov 2023 14:36:03 +0100 (CET)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-6d339ba2924sf2923712a34.3
        for <lists+blinux-list@lfdr.de>; Sat, 11 Nov 2023 05:36:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1699709762; cv=pass;
        d=google.com; s=arc-20160816;
        b=XQ/DVcQZJ0AEWxxmjrdcUicDYR/9xdeXEB+o4eRolLQ4MikINvCyDT8VfNgjJzSfcG
         zOf6xyhI+xWNi9ZrRxRWWvLZbf+omtlXW57KvlfO8UXmfNsQs1NaHS0vIZMsIT/LU9nA
         28r0hTXUKk0fn+igGdY+LYsiIFhVvmwHxgogbEgGPQshFXFRMiUV4MaRFlwUDlNkEwJs
         6kmAcDhCSMIrcJp2bH2w279/exdVTOH790WZDkVu0KBkFaWvGnMcGzh6TWy1vxqU16Ml
         MpwN8Ti/fUGvCUFC4BXwC5iQX/RGYB/gcAqCnLHkk9cb5rz4c5UZtWpeYBAmLGDrRKfy
         94Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=tNPY86Kcb6yivyGtPVJkYGbDZkv+AvnHfsd2L9LRA58=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=zepfQ1C+OFGrL2l36xoov+FZ03A0g1Gd/ELa3PetFmY4Hp1zn8r2rWjC+2VWXKOHdL
         mOxIjnau29+Sd53BbwBABZ4GOaheA6T88fexLvMpMIiB/cpWGs9WUcJe7ghWGAExVktA
         tS2Ta+2+NGZQu9BpkP/PhQMD/GpyJ4LYMSxNj0Oog1WFIKrH+ka0kBCX3YnBt1S5b1Uy
         6TMLQ+AKzCyzP1iMzi3NDqUxZpExBNOXpIyUh6UpB/OzqcnBJKBv8C7w/kKm7db9yLjL
         Ir4vucnnKifMmQrrMmy7u015DeURyhJAjguRtU4p6k8p2P6GMxEj8WWOcL+EB1jRk2pV
         GPrw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699709762; x=1700314562;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tNPY86Kcb6yivyGtPVJkYGbDZkv+AvnHfsd2L9LRA58=;
        b=o0mS2lHuE/yy026b/WOus26fkhyijI1iK1Ph4e/NgaCNCLNnfgGpga9gIionS9L73B
         ID0N4MlYkqQ9AELGaMeYFBr9RysZISNJYMkz/Rc1Ig9dWXmLe/NuHus8S5klhLBiZz2u
         QI/H5jGnkMOpAhZzLAdtAaATXgdJf2dxqcfI+Wo4u1r4uGpznUU1Q3WtBoGoXlsO5gq0
         zisnM/jea5+9EsFUx/TleHhR1L6GIJT+JtPF5aD5AzJEsgs+/gxGYTr1eAjbzIllyUbI
         ouFNVe8JpzWYefJUX2kqq9GjgozqMfByJ8UIRfxMf8V7SsCRmY2gzkbgPkh4vOj2iTGT
         L84w==
X-Gm-Message-State: AOJu0YxO3Fao9CnvzDySsr+3HQ9QSNv1qL/LpXcHkD1aZ75FDuIcpA00
	gEw5/dDRKE0Tl/j9L/PFTor+Tw==
X-Google-Smtp-Source: AGHT+IGD98/LzoEQVeYIhqQZ4VNvwcuVydlLFhrdo0aovD+HfwoGQYtwHqqDeTXtGrOvFsU77VivQA==
X-Received: by 2002:a9d:638c:0:b0:6b9:6a96:698 with SMTP id w12-20020a9d638c000000b006b96a960698mr2373850otk.7.1699709762497;
        Sat, 11 Nov 2023 05:36:02 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:9c1:b0:63d:1f5c:79f5 with SMTP id
 dp1-20020a05621409c100b0063d1f5c79f5ls2113547qvb.2.-pod-prod-03-us; Sat, 11
 Nov 2023 05:36:01 -0800 (PST)
X-Received: by 2002:a0c:fe03:0:b0:647:406b:4b06 with SMTP id x3-20020a0cfe03000000b00647406b4b06mr2062777qvr.57.1699709761440;
        Sat, 11 Nov 2023 05:36:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699709761; cv=none;
        d=google.com; s=arc-20160816;
        b=hRVmshuYUpk7NFT0/cDUQlrklTznV2BqY/Xm4bKooM/7RQW7yzyA162WLorEUyHGWN
         tBadoMeamFgK2fDkTMLOYSSHLYAbk6T6ubcr7cQ06x2dqApkE5hd3grLmgEHQLe1lJfp
         GCSlPfouWnFSHOsFj4M07p9UYxNEn/DgzQ3V+y9lBMfVD60uuQRzCSiJ48sx6pSXRniC
         i0fxbP4It1Q3y39UtoDL9omc7hhCt9LV4tgnIzOsH/5f2/oeZ1OPWdqh2vUi1KghHnbF
         qmIgjKkjCPt1tXbkt7JMh0PUXAOlwqO+63wd+4uEyy1Cut7IJ2hYHdv8xxSAJf/y03wc
         2pEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=hyhGkyEP6ZattW8N0JaPa9xNHm2Qos0K4+7K8tEZ/U4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ofgk2sGy81tpHGFOa/l/XvEaQobk7LCcDAhSgBThY4A+FXzl0I6U7GkKMRqgjUuizS
         nyVa98dOghyuNmcST/HKU/kvncSu/PHbD9ZGKGd1euUGziabqz0h4TWju0IMrzZgJ0wn
         p0QnYQtTc/SSBRWdyMLPO3Qxno2GvQbZ0jaLwctO1v4jjV5l7HaZCSaX/AFl8dYMojpJ
         pmTFicxFyAEYmW2yEz+P9bJGHvwDyO/ohlxl0B5u1TslOyCJoZ4A8/u+iMLL8FDIHqZq
         MW/wxYVVvFFcz7f71omLVcNrWGH2PQPGC+uaenZMdj7//y64UuqdyipAR6gXbN8Vmufp
         A3zA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id e4-20020ad44184000000b00677aea0111esi879725qvp.508.2023.11.11.05.36.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 05:36:01 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-407-gK3zzIs1PjeZTotdh77qEA-1; Sat, 11 Nov 2023 08:35:59 -0500
X-MC-Unique: gK3zzIs1PjeZTotdh77qEA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2CFC80C343
	for <blinux-list@gapps.redhat.com>; Sat, 11 Nov 2023 13:35:58 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DFEE21121306; Sat, 11 Nov 2023 13:35:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D7C2B112130B
	for <blinux-list@redhat.com>; Sat, 11 Nov 2023 13:35:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B1B6B185A781
	for <blinux-list@redhat.com>; Sat, 11 Nov 2023 13:35:58 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-422-00ZjztUGOSqOZ7X2YP5_0g-1; Sat,
 11 Nov 2023 08:35:56 -0500
X-MC-Unique: 00ZjztUGOSqOZ7X2YP5_0g-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 7329D320EE
	for <blinux-list@redhat.com>; Sat, 11 Nov 2023 13:35:54 +0000 (UTC)
Message-ID: <91cbc5a3-7401-409d-b104-ea55d62e99fa@jasonjgw.net>
Date: Sat, 11 Nov 2023 08:35:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Pipewire configuration tool
To: blinux-list@redhat.com
References: <c086fb98-dac5-4295-b9dd-e02dd53c0bc1@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <c086fb98-dac5-4295-b9dd-e02dd53c0bc1@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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


On 11/11/23 06:09, Pavel Vl=C4=8Dek wrote:
> do you know some accessible pipewire configuration tool? I need to=20
> modify some settings and I absolutelly don't know, where to find them,=20
> for example.
Do you have Wireplumber installed? It controls Pipewire's policy=20
configuration. There's a language and a series of configuration files=20
that you can modify. As I haven't needed to do this (my configuration=20
works as is, even when I connect additional audio devices), I am not in=20
a position to offer detailed guidance. You can, however, search the Web=20
for configuration details.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

