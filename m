Return-Path: <blinux-list+bncBCV3N6GOXMCRBJMDWKZQMGQE5PYNOUA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 263889091EE
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 19:45:12 +0200 (CEST)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-254a2c2d865sf2641004fac.3
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 10:45:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718387111; cv=pass;
        d=google.com; s=arc-20160816;
        b=AKjmXSg+cYyFM3c7Z3GYlI0lV2E38wF6QGj4zxsX0ssI1ME4rbNdfAl2fzsk83z7JB
         8mRU7PfqOkIZ4ZLM/P3r4Y7HbNdQMrOAeb5jT8S3xC2eq0uu/3SMd2uj9AxcZAO6yRk2
         s/zGyTFiDWwzet8sAPPTZBo9HWjy2tK00DThMBGQBeSycHpb1NFTy15Bi1z/mD7e5udA
         dmisGKtbGgdnf+J34ALDcF/8qGPF4FzFStnEKwyKGmpP3lCdZeKFYa5XeQx0xgwPidQG
         +upmU898yyHtN+mJnjEwZBi6xwjLNklbXZAcrsyovrcWHEh9qQzHg2XsHhAeI4txJzs7
         rb/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=FToWpkMC6pI3XqZqoTtLszDh/NOEFvVElkwmCDbDr7w=;
        fh=G3GNeP+d1Ideq5u7V//S0n8WHxEONdtHuKbzcMyTFts=;
        b=EkiXmq78KGG83kJjwREh+zu4gx/uLf+B2yBN7beO+PEj/NdnEYphLS3hmjvaOySvrz
         aXNXrRx1q0eFDmpPjqJbhcUR24A7ngEnQUnvh5+XDAjFVllwwlIZZOpQvtgOvx2fCYGy
         GYeNYBAIy1UvWRTH9FKQFR5SutSxu80reoHG84MD+3W8U85w8efmpV9/rVAnOXrUwB08
         6CyKncP0QfnN81oO//l5RjmlHTW1mLwjcf1aK9kUXf34c6QYkVs0Q/YdlyhR12QBODDy
         vcZPmCaYWLHxNVaM4uzC0Ad8XiiwJs7fJa74Ze+VDFtr6nLdWEdx5avEVsFJT9+dhWRM
         PhKw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718387111; x=1718991911;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FToWpkMC6pI3XqZqoTtLszDh/NOEFvVElkwmCDbDr7w=;
        b=V7FIdWTXKcityyCFc2e77LUtYl9ZoOIftUgI36KHK5v17ltEKT9hIsMF/Lxiz8l6/9
         rO4xyBVpfqmXWYb1bjq7aY1HYxRULXXQrcLnx41BBfTlHuIZtkXdWwp46n1LOZ+bijcR
         n18xxwqBFXgAi3VrMYof4kyyLil6cj0BrHYeIUkIMeAbP4zWB1a1GQo6YWSo1qR88KIW
         VROOHaUTazQcPenF0D7burG0i+4+F9VgxkfWVh64plC6gQt5abM6TEGqd2/wjasKiHVO
         wehaNDK9KBRnDTUT7HMw6aZkgED6ZTyyAACQTyhxfhgbMRaTTwLrQ+cctTaB+i3ar4jk
         aRow==
X-Forwarded-Encrypted: i=2; AJvYcCUCMu79TTgeZveqHNJlKkl+a0bVpvAb1w74kGAbIegWC9f7LDZfJ8ftsmI9u23PRvRoh3G5IrknT95XWK0VgZ9Qq4AnlM6K/hbY
X-Gm-Message-State: AOJu0YwErhvt4EiLcofRXHwAmzSvZhnOB5NKYG13mLGdtTkFBEgxgjHs
	Erzcg7MZGQ9Wry+8PXnzHapStb9ZxkcvCJPgrvxEnN/PKkU62h60IzggtsIm2TQ=
X-Google-Smtp-Source: AGHT+IFMI7vb7hc23NwN+FpNIZkByDbT+SnnOM5C9l5dZrj515dykswOYWFIwniZZ0LwuHLuN9nNzQ==
X-Received: by 2002:a05:6870:2313:b0:254:ab57:fcdf with SMTP id 586e51a60fabf-25842b804a4mr3405551fac.58.1718387109890;
        Fri, 14 Jun 2024 10:45:09 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:75c4:b0:250:a95c:3b4d with SMTP id
 586e51a60fabf-2552bbec9f2ls2684954fac.1.-pod-prod-03-us; Fri, 14 Jun 2024
 10:45:09 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUexlmM1dPSCTpU2y437AOIcdDYmTCCsdQqsfVhW1VUA6UfP/Ko7FbWHU9JvHwXfLvz5YyQPJirMgDZo5JPjH61JFYFOAX9WChbx5I8
X-Received: by 2002:a05:6808:d51:b0:3d2:21f:eb63 with SMTP id 5614622812f47-3d24e9e1e0fmr3183539b6e.55.1718387108900;
        Fri, 14 Jun 2024 10:45:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718387108; cv=none;
        d=google.com; s=arc-20160816;
        b=Bfnl/E9GbB3dKeYE/CY76I+tGzottVHXLZaMSKmoDjF+PDb61AdgNltd9Ai+rSqB9a
         rXUAjOoBEWgyBtk51k093t1tBu4ru4C19mZV/3dpYEpN635eNbXFOQhMqxsOfYI540M/
         baF7KRu2bSM6vkXaF8XsrsRYQkX6y3LoNR0Cq7dseQRp8CIHEEsvd7ZE6t3a1rSgW70p
         8feke40P0IrcVoTRGKx2ES2ejWhErvTr3f3uhLt6hTrJqEvfJyzDGNlsyzFEIILc5Yhr
         7MISOYW/poM7hJ4sheLBNzSRJz5juWB1dEZDC47SrHmX3ZYbujea2pY/eFnBpNKbBvcT
         CvlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=90GAdv2Ge2mSXY8IkjLrULigQCGfoX+rRB9mMOetRQQ=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=MXD/ONdTEvk6InvzWzbPv8inbkWYswpElMH+TqAXAMOUVSZtt8qz227JolTG0RgBMa
         avP7/iHWybF33CWTdBeF+2lDWrg3Hxv0MxxOPIB6Lveq9m+MqimnpQmEl283aMNDZfoI
         8AJakv87bUsTZPusUaXquDKsoKdmKIRG8IwtKmzWAwAtlwpHzH/U3Hw1eqXASLyQv6Va
         Kw7cNEZfNWHrRjbt0d7MpxT673SzThPsgp46445PFCja6fgchZzawXtysItwtAI6fDfS
         ytSvWZ5lpVch0p3/a3l3dCWO/cThihVbJcSgYDXgsi4kO6pB/wmbAP53+DewmDCMriKs
         CNDA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-798abe580c5si461716585a.587.2024.06.14.10.45.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 10:45:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-93-QRbwPharMfWVU39WCTPeWQ-1; Fri,
 14 Jun 2024 13:45:06 -0400
X-MC-Unique: QRbwPharMfWVU39WCTPeWQ-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 867E51956050
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 17:45:05 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 74D7E1955E91; Fri, 14 Jun 2024 17:45:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 71F8F1956087
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 17:45:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E92ED1955E84
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 17:45:04 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-177-s0jEBpeTPO6kVdZGznNEsg-1; Fri,
 14 Jun 2024 13:45:02 -0400
X-MC-Unique: s0jEBpeTPO6kVdZGznNEsg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MgeoI-1ssMjo3D6C-00gTX5 for
 <blinux-list@redhat.com>; Fri, 14 Jun 2024 19:45:01 +0200
Message-ID: <4079353b-e4d8-4284-a50e-64d46bcfa5ed@gmx.it>
Date: Fri, 14 Jun 2024 13:44:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: What Happened to duckduckgo?
To: blinux-list@redhat.com
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
 <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it>
 <2b2e74b2-5cdd-4dbf-961c-a13940eb8bb7@hubert-humphrey.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <2b2e74b2-5cdd-4dbf-961c-a13940eb8bb7@hubert-humphrey.com>
X-Provags-ID: V03:K1:FDwD6amlhatdYKsH+LSj3h+kO2IZ5C3b+TZKRgkFEY4iAivtVOx
 zUSLvqpOd1Luludg3b06nfeXaSjJBSMwcbj2if4G+XaImpbOKCZ9XfEPmBWc0ukijY8gTtZ
 r93ELWwJDIwBkFRAMujsywvxQ/+j23Nv3vH5N71Y4SSJNqxgm7N2UwRiTii8RxLG4g27kC9
 oUm7DEnjw0YSDGYjOuTjg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:UGFkRVzv2aw=;YOHjNXDBJ8sGpS9C7PEGHw4YKPP
 G0ZWkLieeEoTRechCTYB/S7+u2xC36EenisgjrrRWci8zgMc1Nv0ejo7qhullHR4bqEAItHyk
 298D9jk0ROs0TJj6kSt58IN6jTwO/hpx1v3YlTrgYJWC3PyIk9PdtRatbBZ8awbQoQh7Uf0bE
 jlph9QAWZSJG9UBYAR0j9PSFgF254jREvyRWtEACOtDV0UUErmGETJgxxgOyJToH4KSchTTya
 5lPKDQwJvKge6cjIP7jMbrg/I/fWbvJjV7kVVJUH7kB6coUFx1ZOsWnYB4D2hm7OvmN9GSwrW
 ePwR6HviA090kY5651HZQiQcWMrrgSxFWggEMo2xQ+dsxZQxxTaG5GXpP4dHjmQyQOeQUC9gQ
 rYtmg8SP4LnsbUFW6tinm+iXu3/ZxiangVQbjxy7dJ3UUy1EmY03527E9gULVx9m2OXUttPuX
 dY61qwxAqzIH9dQNDwFIwslZ3VVFPJiJLOKxqhoKtV5OX6nxRMun8XYyr4CtFBy3Ud01X1TFW
 wN3pVBHEV0k7qPfrjVYvT8CdqupFuYCxpfloKWoXtNC5+MGDwAlJmypv56QkIUwC+f0zGDx/Z
 6fZMNyYbiZRTUJCvalfNJU26KP315kZnovsZfGA3nl6oBEgd3oKea5uRpT0uOtoXo+CPhPwZ8
 bpyeyPykDO2YQ45hUmYqj8lYwYQq3BjZKJ597o7UEDmeX6fKY3F1wkg/gSlLzm1Sf3mSjTsCI
 gX1i9tY62qYlbC8lmm3xjSyrn9vv3TDr6XlKlhPYQzCBhTdiidE9gM9S7Fm/PyVuSHnVaMTT9
 t2ZRlBE7U5R1WtAJp/Brbk9vUTmAiONLr0GAIwH5wSiVg=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

Oh I'm used to the page. I do see the reset button you see, though mine
says Clear. It looks like you can use that to clear your search box, but
I usually just delete my text out of it manually. The default button
though is the search button, so if you press the enter key after putting
in the text you want to search for, your results should appear. I do use
Firefox and Brave with it though, so your mileage may vary. I
specifically like the heading navigation, where every result has a
heading of its own, but this doesn't work in text-based browsers
unfortunately.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

