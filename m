Return-Path: <blinux-list+bncBDYIZZNASAHRB2E7ZG2QMGQEG3NEOLA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id DC66C949595
	for <lists+blinux-list@lfdr.de>; Tue,  6 Aug 2024 18:31:38 +0200 (CEST)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-70937ade3desf431544a34.2
        for <lists+blinux-list@lfdr.de>; Tue, 06 Aug 2024 09:31:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722961897; cv=pass;
        d=google.com; s=arc-20160816;
        b=GKyOM8wZ/hxFQKBsPJg6IibRG5kaQVx/ucIBE0DPQbbMNXTE6VygLmb/lIkA5jPZNU
         ghfpxdwE06VDFxwtjcb/ZpJ+h85AlfLvCZ5ozI78pDUAaFV2teAcBwzpUXhM6beqbgio
         DBalrursaWMNHGP7nMtaY3Fm6gCz3YXO+O6edG+CFLscOfz7n7+t04YI64wcGjOfFKtT
         zP60SQ7YGMmFMHyVrUYDuIADoG3vyhDoZijmHu/Zo2ZgBZkBBPNusaOLYabPI9/njoFU
         0AxiTDrp0h3Y0QNREx5L9TtnpMehAzvhI4jRKucW+hUPuxiqbD5ndCbxt4d0ypKSr1ed
         MT8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=feIRzIfESdyc2id+3OXkpIUbhyBv3CiU/xMxxl+SWQI=;
        fh=GjalUFMtJnfT2wIt5drQiT1kS+8rw1tGswZC1a5N1lw=;
        b=OrqYvuoQ+ZaK8vT8WHFc5/7LuUHAWTWJWl7/zcMSuMaIRZuaJ/iqnS8rBbcaph+bQU
         HSIkbssHswNpYqbqt5oQsT0vMS7/AdFqI5sqwnUnyKuGUFHpCz+tkwqZJ5u+LiFUet1I
         a5MqY0RcQoWiciqztdZ1x4+7KAWgrqTbx5sFNd7SbAg+Lvhcfg1wpyryM655oVbJpG4j
         2V/tmkVQ7B4qd+/g6+azO+bznYM5PipXFxLrxgUYbbzuLGCiFFTibvZ+8N2Hf2UGLWyb
         iJMkTH2pgG5WsYTSHbPekkFQTeopTO0wYAulL8rGH5Gh25f+VKYk24m2b9J7PN+hSYmf
         whlQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.182 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722961897; x=1723566697;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=feIRzIfESdyc2id+3OXkpIUbhyBv3CiU/xMxxl+SWQI=;
        b=R3XBPcLZSY54WTrUSqsV9H9qk5QMdGBG/lQVlvqRjuTM6+/ADZGC338D5uT5rliz5Y
         DYSQxsTwbCpf0FaTnyzemiEY8SdTd6x8Zg3i9N4i2x7/mTiD4swVhglgt8uE6/5xAUFD
         3TRkLnqYCIvHj89RvJQ1cYRL1fIitoZ8dOIiGLh1RG0caCpzHMLfuhgyc1Do7JX50lmN
         FcS39VY/ve8aPWd+c7XoRDMc1BiP6o2jCD9RPIr3sJ0dS+IB8UZewvOGkG85Z22f5fmk
         ecRcW5lcM+pYX3KtE0zX/fxY3yFR6zzXTwAsWYfsnwd8JXNZE8IqqeCCOVXGeF+HEaBw
         /juw==
X-Forwarded-Encrypted: i=2; AJvYcCWl2H4ZuzC1h0CZmNekWIJH71fACbdqxshMRNaz1WI5u/2LLH07TtuWxR3JVj/3U85lJdaMFmwDhoejtHooWf8ngexPoTDoVZds
X-Gm-Message-State: AOJu0YwdinGN6axTuap/GW1deR7N2NK71yiXWJRJ7dh7ps+uZfK/YjRG
	UdFuSXFldrHXumovHnuhCqb/oeSy6UnGptrUhaFS2zs1GTULJrpTcrqRTMPKBZg=
X-Google-Smtp-Source: AGHT+IFdXq6oLa1me9eKbOBSI/9QpXUyVVfbclYGNbDiWxx8PWY3GxTQJz2Ah6IU47eTx9C2Fw+pkA==
X-Received: by 2002:a05:6830:650b:b0:709:5cac:91f1 with SMTP id 46e09a7af769-709b3244579mr18703675a34.18.1722961897187;
        Tue, 06 Aug 2024 09:31:37 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a8a:b0:440:337d:f8bb with SMTP id
 d75a77b69052e-451973b335dls57248571cf.0.-pod-prod-07-us; Tue, 06 Aug 2024
 09:31:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVuGJr/wj/CmzJSgTUD4lx8paZ9/S+Yp+Yh/a1EexB3k8y6RDwYvOFbb1QCfjRzlFgR9Kx9wzkcEG0qDDRBxuDagwxLiz3UH1lytt4G
X-Received: by 2002:a05:620a:3914:b0:79e:f9ca:4631 with SMTP id af79cd13be357-7a34ee96401mr2164004185a.1.1722961895946;
        Tue, 06 Aug 2024 09:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722961895; cv=none;
        d=google.com; s=arc-20160816;
        b=x0KTHnU1ovpSdg2CLfb3tQiGaffrb+dMiwHzRxtItP13WNpWgoeDCOqeZDDgwaYDqo
         6B7NLaRBJfbCVGRzYZefPV8I/b/lIAUQCN+rhhnaWqN07044wSTglAWTSUr7nabUwcCU
         R/sX56SKd4OKOkaxMkj7i8Gw6TTjY5c8ZCuW7cmw+tJ3ORXoDcxJaOcGyGk/vDHi84jH
         frJnO58V6buMeS5hnN3rBmX4V7fakqKlu1pnAI0t7r93mBPWgDoVt4wZ4IQ2MymZU3yx
         ZRBhUPCMkJ7yOWipSl9dB6eklvowiT8jg2wkRvii6+3JKI4HwI6QStTW+egPduFK420G
         xbMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=o+OnWPEF/NCzNGsObOeYfpzZxKcIlnyKJyM7DjkzyqA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=vcvmbaUK39kAqt8SmocHc12askSfZKCVGD1oNjIZZplOMldLRwMSWgJ7UGox6wCQ8L
         XtYoHBursMMzvy6ndAjA6cftZURkw68NrorfAXCkJAxVJOTIVy/IkyKBBQu12X6t8TwC
         LORMih1DkIG0+eF4W/YTpQUMs8h/FkASDnV6iG+OvgKv/8fGi1oGjioQIfAwwqhGrp7U
         ShRvQGBMGYgmYFyDeH2x72e9Loze7kHj8Czs25xUBsvMaYRnZGqbgEectjXR9lm5JjYN
         Yhaov57LlTf9pan/z4FYeKJ0iBdRW0TZp4AxjvsRapJFKOBfqqD9jVv+YH/PKLdyKJzr
         Nq+A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.182 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a34f74ae21si1311311185a.300.2024.08.06.09.31.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 09:31:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.182 as permitted sender) client-ip=209.85.167.182;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-47-ErK_ICS3M1eM8vWCiBFlfA-1; Tue,
 06 Aug 2024 12:31:34 -0400
X-MC-Unique: ErK_ICS3M1eM8vWCiBFlfA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CA60A1944B26
	for <blinux-list@gapps.redhat.com>; Tue,  6 Aug 2024 16:31:32 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C5FB6195605A; Tue,  6 Aug 2024 16:31:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C3B4619560AA
	for <blinux-list@redhat.com>; Tue,  6 Aug 2024 16:31:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 44BC51944B26
	for <blinux-list@redhat.com>; Tue,  6 Aug 2024 16:31:32 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-250-IDncWq8jOp-4hBpCLUPa2A-1; Tue, 06 Aug 2024 12:31:30 -0400
X-MC-Unique: IDncWq8jOp-4hBpCLUPa2A-1
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3db145c8010so467800b6e.3
        for <blinux-list@redhat.com>; Tue, 06 Aug 2024 09:31:29 -0700 (PDT)
X-Received: by 2002:a05:6808:1484:b0:3da:ae17:50c0 with SMTP id 5614622812f47-3db557ef73cmr19098982b6e.1.1722961888493;
        Tue, 06 Aug 2024 09:31:28 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3db563b705asm3516592b6e.35.2024.08.06.09.31.27
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Aug 2024 09:31:28 -0700 (PDT)
Message-ID: <0a500de0-3aa3-438e-b1a1-6c77b87637c6@gmail.com>
Date: Tue, 6 Aug 2024 11:31:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Lios
To: blinux-list@redhat.com
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com>
 <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com>
 <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com>
 <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com>
 <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com>
 <9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com>
 <b2694532-b822-9c5b-1bdf-1b4ee087ba23@panix.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <b2694532-b822-9c5b-1bdf-1b4ee087ba23@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.167.182 as
 permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

this scanner works perfectly on windows and other scanning software on 
Linux and has no issues.

it is only when trying to use Lios and it has the same issue whether i 
am using Mint, debian or Accessible Coconut

Rodney


On 8/6/2024 03:25, Jude DaShiell wrote:
> Time to call epson and ask some questions.
>
>
> --
>   Jude <jdashiel at panix dot com>
>   "There are four boxes to be used in defense of liberty:
>   soap, ballot, jury, and ammo.
>   Please use in that order."
>   Ed Howdershelt 1940.
>
> On Mon, 5 Aug 2024, rodney jackson wrote:
>
>> I am having issues with Lios, I am hoping someone can help me figure this out.
>> Scanner I have: epson perfection v39 ii
>> When trying to run Lios to scan documents
>> Lios sees the scanner but I get the error below:
>> Error I get:
>> 	Scanner update list error Object has no attribute max_y
>> I have tried this on Accessible Coconut and Linux mint as well as Debian
>> Bookworm
>> all other 3^rd    party scanning software on these machines have no issues
>> with scanning with this scanner
>> Any help will be greatly appreciated.
>> Rodney

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

