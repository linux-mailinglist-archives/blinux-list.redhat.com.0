Return-Path: <blinux-list+bncBCLPHQH4XEIRBIHG6CUQMGQEWGOL3TY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A2F7DA308
	for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 00:01:06 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-41ce372d248sf36889111cf.2
        for <lists+blinux-list@lfdr.de>; Fri, 27 Oct 2023 15:01:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698444065; cv=pass;
        d=google.com; s=arc-20160816;
        b=MytJ7TcSAodAM/eU9R64kyJBGSDZtsQ3RMVa6djtTcHUXvg63Apk/ndtNaPRbdsgFd
         SYmBW2e5vCjZKnS4zZI04HNRpb1vnDDhQ21hY+n3rxUR0TrZch7JNxuS6CKQM2U4nE3+
         QCitt4WqvJbbYDE5DfdEOdQKNdWbnoBTW468s6Plysm/97tM0wPC+YTaNhetuHFM3bzS
         fjvkQWxB2vKHEs0EmSqA14zTmLS+GCDKiQoMzs3bLC1SX42RrhrxWfyHq6hEavMLf0p2
         wko1si1uf+Ehb17lZ/vIJ40VqpHEoqXYah8ntgp4uurqIC/A5gUPKIYid6ZIzhKYKEfr
         iB4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=sIVw5f1/Qyi1gUmpSlLDms+T3b63JKmH4+Vat5xysbs=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=DtzcxDtjs5xZrS7ZusshunFBoVgw0bKI7hdX3HV2xSFfOrtamEjNu0ATIPYphW6bdh
         zvGTHHLAMVu+tFA/8o8jblkHq2RHgykHkmjKpZV3rEVY2oRupUr5947+kaE2okKMZE8M
         kYA5Q4atWYYLck60Fe5rOgOSJVVIXiRRJmBXU9H/EvFD+oK3C2IZWw5LJ/DH2LlMfjE8
         PUP0GJB5Dnazufo0UXVpxuJI5Q7/C7VJIFKqO6XpB4zk8wMggssciqAdaoqluGyimgzo
         zDsHSR1AUhUqnMFEmDPlaq7J9PmsxaM6SuZzwabXYcuKQ2AVrsXRU5OlDVwAVveuvF78
         cYog==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698444065; x=1699048865;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sIVw5f1/Qyi1gUmpSlLDms+T3b63JKmH4+Vat5xysbs=;
        b=SJKkWL5sMDe1IL5i8WW0Gz+J9xkH1EcvvImx3eiNka7V7/8NgQ0SqVqoDchSvvOvny
         DQmIoqfy3DXwkCUl3aE5Xx3oChwLTT/KRpAY0ylj3jYsW/RqW+Dz/YMXbDschUyIeWi6
         t/DjS3tff4eaBzr1DOD6oUiW+fa/qobhh0GVqqNDczYptV3fKPOBciFU0dPqb8A0LRTc
         7zMv+Wga1noWIlHXYGzmyJdHzm47CF5HT7BGcMCsAGXRiJmd+TjHva+KgHmWvPmukLE7
         93+i3I3I0DgfWYzXtB2rTpoxMf6rJkkPERRVS1m9n4Q5fUpX5K3Se+oXZlbT8CeSGVwy
         jkpQ==
X-Gm-Message-State: AOJu0YyW3ITBB76FCMrnc7JU6bBO9ddLppv2y2r9bXem9iPfCadXHvnA
	NFwq4aBXLkBMLWksAx61t07z+A==
X-Google-Smtp-Source: AGHT+IE5ShCQq/pUsINdkDR1BfwXNt5fVD+ZQxBrnHXeQUtVH+dEgisyMWjTD1xEvxie5VF2GxDG9w==
X-Received: by 2002:a05:622a:144b:b0:417:b7c7:5a2b with SMTP id v11-20020a05622a144b00b00417b7c75a2bmr4737981qtx.37.1698444065135;
        Fri, 27 Oct 2023 15:01:05 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:518a:b0:419:8ce8:251d with SMTP id
 ex10-20020a05622a518a00b004198ce8251dls593828qtb.1.-pod-prod-01-us; Fri, 27
 Oct 2023 15:01:04 -0700 (PDT)
X-Received: by 2002:a05:622a:3d0:b0:418:110e:6179 with SMTP id k16-20020a05622a03d000b00418110e6179mr4910728qtx.1.1698444064263;
        Fri, 27 Oct 2023 15:01:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698444064; cv=none;
        d=google.com; s=arc-20160816;
        b=UaXnAwl49tdw1/4mjdZOdMU8vompofx2ImvgvFArU6bkYinMHKlzOvM1HzfPXW0be9
         KIFNC2HYyLnHjlQHJy777f18O6ACGwuv+gQH345qboCPLVGd8sG/SCiqMXTE7VsGOkqU
         DDj5ec3pBiwSVupvIXS/V9AwmU2Q5/8Uz3Hcknq1LRGh6ixf956FTkNmYItVNUosaQbn
         wv5fb1jHxK+3TsTB/xc5fnxBV4hoYy52sslK8mnHYu5jPp4JjFXyjKJ/q6ECp6NhsFwq
         yCA3BCzbbj0hQvtXWW7RMBZQLq2/s7nueHapLb8b3wVKL63VKbYBAtXcv7i+PbmpjDbq
         3Eeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=WMJtFaW0Bz7ZRFSMvTuZowFqiagfrmmPofFGEmfDEmQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=tNh+bmgfyG1P+hecxBURORjvo1LqnlMWJ4MURsNNQCFY4DXSxe714Q134pMJKwkYy+
         7YPHWBoMwIQTliocgTkzhWdL68nqJFfFTnv/oGY/XwFxUcw9K9V8FS2tbWyfrCRb3bvG
         dpWI1/lnm+TZ0aoDOuD1lAodv8bJgOkRRPK4NWD0xfloaKcD9/9oxfxuSS9JKhHWU5qv
         aFWdxsa+ELCNBaFsdKPH0/1ukoDrKEcuGIrW6ycvL8o9xEUdrMdLmOXO0G6PWmQnQ0e7
         wWAyZoOdiQMLK6TRxPgGwilzcZe+XVz4AD1BE2sWj2yt1EpUXoKEXeTuVAm/rSjK83y8
         g9Hw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id d9-20020a05622a15c900b004181451a0ecsi1285298qty.57.2023.10.27.15.01.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 15:01:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-286-havmmROFMHulVyKlTpt1Zw-1; Fri, 27 Oct 2023 18:01:02 -0400
X-MC-Unique: havmmROFMHulVyKlTpt1Zw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F3C4B185A78A
	for <blinux-list@gapps.redhat.com>; Fri, 27 Oct 2023 22:01:01 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id F0BD72166B26; Fri, 27 Oct 2023 22:01:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E94762166B2A
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 22:01:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD6C32808FEB
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 22:01:01 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-453-c7h_e2BuMM-baZUoPJDVHw-1; Fri,
 27 Oct 2023 18:00:59 -0400
X-MC-Unique: c7h_e2BuMM-baZUoPJDVHw-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 56A9732609
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 22:00:57 +0000 (UTC)
Message-ID: <9c6cab4b-197a-43ff-b613-d598cc531377@jasonjgw.net>
Date: Fri, 27 Oct 2023 18:00:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: OT Dell Inc. XPS 13 9350 Linux related question
To: blinux-list@redhat.com
References: <ec2a66e8-9e7d-42ca-acb8-20b635478e80@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <ec2a66e8-9e7d-42ca-acb8-20b635478e80@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
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


On 27/10/23 17:27, Pavel Vl=C4=8Dek wrote:
> So my question, some Dell XPS 13 user here with Legacy only mode=20
> enabled? Or is it better to forget old legacy mode and accept Uefi?=20
> Uefi has more friendly and accessible boot menu order manipulation and=20
> that's good of course, but someone told me legacy mode is the best=20
> option for Linux, but I don't know, why.

As far as I know, UEFI is better than legacy BIOS mode. Only try legacy=20
mode if UEFI fails to boot once everything is installed correctly.

If you use GRUB as your boot loader, you can configure it to sound a=20
beep when it reaches the menu.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

