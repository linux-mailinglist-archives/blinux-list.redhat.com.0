Return-Path: <blinux-list+bncBCLPHQH4XEIRBB7ZTC2QMGQET5GHIVA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C76C93E518
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 14:41:45 +0200 (CEST)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-6698f11853asf32557507b3.0
        for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 05:41:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722170504; cv=pass;
        d=google.com; s=arc-20160816;
        b=fQjmMEdyBsrDB5/5v5uTTttZEevvO5tG9mIPGnABCfkIK8rFIxyJXpsFqSTIihzJUS
         Pq5BPhzsVF5HG6E9G2Hb3amog8VI4ttOZTon12MRkt5ozZ2sahGxIjeXxpHbpd3Hu+21
         8Xsv+cg5cxQMIpnYqTeNF0zxld152y+2Roa2ErkIU7G6p6J/QEW9IV1vgL1KTZAdTjY5
         YsDAEg8Nl6OhWOdq4TxwVG61NIk1TRu5Z9dUPIZXQxR1WVm5O4PrKXX7yUzb7r6DX1HO
         sw64ptwcW7qnQRjpb1eCtKszzca2fkfCfMlNuDvRyLOBbQce8slAbD+m8CRtHnyBXiao
         x1dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=p+8S4SfqVpeE5uu/k2+9Y2NXpQfy5WSweIt8krZcLQk=;
        fh=8MMff0rfQuxyhZ25hOC1aTcbN+lLlSi7q/IndsA8lAQ=;
        b=D2WCDmhxUc80SK1oKgRy/F7jlx01UfGSKjnZkarH/7V4Naf5z9tKx6crcApzmYt3t7
         0HWL+zkPaG5huM7JCgqHWKtDGHTaHqnS8MkdGVK9XZ+s/L0riS6igikVOXpLlcJgzUeV
         dZOurCj+n9bX1Z2cwkNwUcIdsi0Epg7EGV30zP48Og3nxgltMHzDZ6r/tQxCfm71lXMQ
         guo9uBlaz++4QhLhDws8wfvtxQif/TVsTsfPm6GLjOxWRBOHKnDkns2rT9YzmQO8l6vC
         ermhLbd+qszSGqJvFRBqzqp9IXrAW7AZsDWm04upQwtc5JpVycotT3XCXAo6SxwFGoXG
         Bc8g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722170504; x=1722775304;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p+8S4SfqVpeE5uu/k2+9Y2NXpQfy5WSweIt8krZcLQk=;
        b=J6fAgKTUf+crf26pPZmOoF7y4SZ7+43ewUJexh/viVPOl5bvSu0qxCgC5UZGrZi+2w
         WHCc6K3jhIc/ph9EBvV0vyweoWSqXnFYygsAa+273Ze7cI2DlgmNFbHm2/l3Aci+Uxbs
         19SwopfHoSt8ZvlG+pdnTFOhsP/UX6FhnrrJQVHY+//bmAl8jWXsq1Uolx92ZoxCHWNt
         8BbfJmF0zv3q2j4BTTTAUQz4+xqcbT5iU9FBeJ+O8SDBjwhuTuPV+MCSUjcxQWmIMCX/
         SeS2unFv7oFZX+kiFDKD0DeLtgvyfBqES9tMCvdokOUSzKvF2Ub1fartPCFb5dpINNzN
         M59g==
X-Forwarded-Encrypted: i=2; AJvYcCWYTIzP1Mz+w8YfivzHulpVqUiLcSQKg4bnyPPhN5cOUskOJaQpk8uzjL3zyYKFyRilgB43WTypxtJrBY6PZBxbF5DlkNQLfii4
X-Gm-Message-State: AOJu0Yxsvsdb1XWJt06UdtiBiCJy6JiVC4iDySyk4bvcDUPEJKCRVPnk
	r1e9zP0nQ9YHn1NJn8F3whI+kqXwSfGZ76C2CxZNVSPzU/cYZRbnVUeAgzTICxs=
X-Google-Smtp-Source: AGHT+IGvwLorMr+sH+DN9DQvTeTzVel0ECjU2VLay/C0RZY3nSjqqzIKdf8BFLviHdZeTW+Md0wnyQ==
X-Received: by 2002:a05:6902:a09:b0:e05:ed29:a616 with SMTP id 3f1490d57ef6-e0b54583dc3mr4694427276.38.1722170503725;
        Sun, 28 Jul 2024 05:41:43 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5982:0:b0:449:2608:3035 with SMTP id d75a77b69052e-44fe31c4e83ls71763641cf.1.-pod-prod-01-us;
 Sun, 28 Jul 2024 05:41:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUyfnLkUIHhFBZJ6oSylcsYFWkh11qP6XUbLGXnb6vZz/KqQuJZRUsKa5eWYszpOZZwroMD8zivXYb8BdIlTn9TROQtXRJEtdtVbUtR
X-Received: by 2002:a05:620a:4307:b0:7a1:e93c:ccfa with SMTP id af79cd13be357-7a1e93ccfe2mr386049385a.60.1722170502775;
        Sun, 28 Jul 2024 05:41:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722170502; cv=none;
        d=google.com; s=arc-20160816;
        b=Uc8xClTYdMVCKaOPvf9tSq2SyPeUnmk3YRaJajp0/Knfe3loTSZtOLbwQf1D2oncif
         G001yVpgSGentQh8tPQzp5jhzoVKDYEpqNZNEc29s8dvHArtlGaFto8+XdIZxCRGfrcU
         rBpis3iTZ52X/g/7sMFtZmp02f3KPrGgMgekRvEiHhB4ktOFnEMFnGXZBQ7wtmOHkbCf
         HidPsY33kGMlRcq6CdO7eQUW46+10V/BzP73Ada0AHIa9V7JNLhd8Ob8vRPVf5Ba+/Ew
         H6T8UASNOWKOJjE9j3Mcs8qVlY8t0TaV3uCgiIH9tD+Y4p+cioBJ+q09d2tfNXX1gfDb
         +6Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=XD3FWssebM67dEaSsIRtLJ2djP4kujD3Ao9oXHEacOA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=iHUmlSqoK1siDjPfnbTrLlOwWlMfqUMPC6838hDClJfb+Tj90uAhWhzZ+jDnPHkbsX
         O0dhkN8dLdb5rhvtdj3Cr0e/WJj/ChoRiTM3/4ScGuXhz2e5B4ygr0DpAPWJvn14HpVQ
         tB+3dosPaqtk7xtaXg/fCApg4p0vF6kTp0teSeTobxuTeOOC/5VJHk+t6jb5Ip/CYmSL
         v1KF5LU0FqhDgroQK6HD56PySQuCQGasGB6OCkNaX1s6tDLL7YgHud9uO91nPyQxxlp+
         z33kp4phTIzTlFr7OPJwOxCRCEl8wi6M1kP+XXoiEB9myUjH0kF9vMtWv7Se5TzDGuCQ
         uIwA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a1d74a10cdsi809250585a.783.2024.07.28.05.41.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 05:41:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-526-ffsbzW2QN8q4dH3tiao2Aw-1; Sun,
 28 Jul 2024 08:41:40 -0400
X-MC-Unique: ffsbzW2QN8q4dH3tiao2Aw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D25601955D45
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 12:41:39 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C35221955D42; Sun, 28 Jul 2024 12:41:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C0F5B195605F
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 12:41:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3E24B1956064
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 12:41:39 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-563-_i4qKbb8OI2gAcoEEP0xNQ-1; Sun,
 28 Jul 2024 08:41:36 -0400
X-MC-Unique: _i4qKbb8OI2gAcoEEP0xNQ-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 75B37320F1
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 12:41:35 +0000 (UTC)
Message-ID: <8eedfc39-ac45-444b-8759-c76cb94406b9@jasonjgw.net>
Date: Sun, 28 Jul 2024 08:41:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: scan and read under Linux
To: blinux-list@redhat.com
References: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
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


On 27/7/24 23:20, Ryan Mann wrote:
> I have the Fedora Mate spin installed on a computer. I have a USB=20
> Cannon scanner connected to the computer and I was able to scan a=20
> document using Document Scanner.=C2=A0 I was able to save the document as=
 a=20
> PDF file.=C2=A0 How can somebody who is blind read a PDF using Orca?
You need to run OCR on the PDF file if you haven't done so already.=20
Otherwise, it's just a series of images of the scanned pages.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

