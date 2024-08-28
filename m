Return-Path: <blinux-list+bncBCV3N6GOXMCRBE5JXW3AMGQEHWPWURI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 02902962DDD
	for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 18:47:16 +0200 (CEST)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5df9375c3b1sf328597eaf.0
        for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 09:47:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724863635; cv=pass;
        d=google.com; s=arc-20240605;
        b=bWJQ5KSJARFIWF/TuzM18Je3+PKdEY9qVx5eJ2aydXFOJlGEwGArSeRTzG2X4xuBj8
         sISmpS6NFzurXYpsLakupxg9i6SXB9MMj9Emh6j8Ki2szSYa6WRIocChwNq5YvaSOtXc
         9uwxtUtJKt2JZSmwiiKHhI8DUvVMWDPjLPCjalXWTMlPDYyw2kMSv9wkMgenLs6/2FQe
         +kasDwIfDXjxqTpPFFzr2RAQCL/G4xJKBk003F56LQ6rDxTsnGi7C0CSXZhCPwWGNpLe
         vZFqhS/2AnMw7Q59rblMPsv9Go1zc4ncT7Zj1ec+q01p7lCc3xenoeZaCWiYm3adGJ81
         qgLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=5tNhIdWkeRFFpQRTyYUevdlIFIabAC9m89ZVjbYQYko=;
        fh=HUzQdvuwgT39fzH7MRn3S1FO22A/q7egLH9jBG4JLqQ=;
        b=jmCxsz64Z5IXPzmlALwYIPDleOxjlHGgAPm8eGE5Qd6J4A/wEJryUbx6iNDSniVfUS
         zwv0cbXpH3CSeTm2qQvzKY/j91ZKDECYOqwv/43qZx9dni/iBGfxo62AQ9Q2WCp6NtNI
         xj5iCSD52RYdyarBwv5U8SKCvs5emBMczldf/zqX7l6eFqhQhk/vJRfpTaBZ+yH/zjxi
         NvtdzQHm9INQU5mFhy9MHIrBtzo+7lMHcmZ5EFeosl8sZ7NbaeRGxUHml5vLqC+OkpLi
         hLm3o4DAs1+uzujbFh+SNMTwrWQtu7y8jDhNOg2r8Bw8o5GqYTHFbMVAK6xsKiHv7erN
         1JTQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724863635; x=1725468435;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5tNhIdWkeRFFpQRTyYUevdlIFIabAC9m89ZVjbYQYko=;
        b=r4djgvJnVVRDmwUXRUAOFChw47H/bRMoDactCrRpxabq+PA997BuUpkqHeljRYgE9m
         kUwDX/W493ur0kLmItAdV/ww6z0OaHQUxcKva5+Ugc5hyKS76jlDIXqRaJNbliXubAqL
         xP3Us3H5ZbR1Rt5q5r/Sbp/K+UliL23d8c5Evi03UJSg1s6NEE4c8ikmYdN5I5wguBz/
         TeF3uNbMeXBHAYK5DiRjcuKo/FPMTcBVaRKge4x14CdIhJIWKtQmNRcxa03r1Rgt6EDL
         V9PXB5vrpDOwtVFknapYhVxmKeOBuRPYNWuoXTV28sUvPBREQhssq3qtvrhZskQDRXbx
         V8sw==
X-Forwarded-Encrypted: i=2; AJvYcCVqp1FoXawhDgeMnANF51NQDyZI/OkFBChs8tQ8hcElYoBmGiq8dN5DXCenYbdj+CrAlShFIw==@lfdr.de
X-Gm-Message-State: AOJu0YxVrqX2V/P1CZeE/1G3mjpBbIE8e9IYLkrFvbkcR78ZHOpM/GIG
	LrOnJKGlS1Hq59wlLIXdWA3gj4/wzLBLRvvH5PMKAKvz3aFYLvks0/isjS40dcI=
X-Google-Smtp-Source: AGHT+IETtzP90thfS6ahp5fHlv4w+VB3YulmkepxRp4fi+UiXlNjsmGYVS8J3Vrt2SK4OZPA0OuenQ==
X-Received: by 2002:a05:6820:2713:b0:5d8:10cb:c336 with SMTP id 006d021491bc7-5df97f41519mr417962eaf.1.1724863635444;
        Wed, 28 Aug 2024 09:47:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:e689:0:b0:5df:8190:e5d7 with SMTP id 006d021491bc7-5df98db70bcls60538eaf.0.-pod-prod-06-us;
 Wed, 28 Aug 2024 09:47:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU2xTJRn1SRJTeNZOAamwDMGcYsvdIw9XqpKxi2bVH5tcEuutdbit9X52jUQgLybSLguyA1Mc9VKytMcA==@gapps.redhat.com
X-Received: by 2002:a05:6808:10d1:b0:3d9:dabc:7b79 with SMTP id 5614622812f47-3de2a910f7emr18038671b6e.47.1724863634664;
        Wed, 28 Aug 2024 09:47:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724863634; cv=none;
        d=google.com; s=arc-20160816;
        b=tPBolwisJb3NCecTgArk65L8t1gDre6m3KN+moqjvpkqBoOAxl7UqDMfuqaEgj/9dP
         EG96LrdFzjbELUyZ4Y3Rc9FRDNZHoRtJyKGHADgshvzyGnJ4zxayhzWJEddFYtw46NZP
         e5eH5nwXmHO3OiGOag7kK8LSSbbkMjGFI9iEtoh99BF2RBLkRuC+0R57xptKwDPAXs45
         TPUzyWXLeeAB/UOkEB8QXxG+k7ZPYipWEnNvn+qqXHH6oPMosiqtdKU9WmbD243Fr3KR
         W8lWn2UiNnenNoRrxre8+pQD7PnuV3eesHk9HrR8jNLDZSi3jK4pXDqQhgx8Z9H2JCvU
         Musg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=6oMnNHfkKSOpft6FD6g9d77siw8pHu269ygKjA1bKz4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=HrZ+5GIf8oj0XX8VWLj4d6GbYje6okH7ehMdJjA3Ki330vQbRgdmpwZawF5yzDPrHA
         E8D3K5Rjy9qneNYAYDCL+vCfZLa0MFIUe+3RVjjGCyENpw0TSJmzJF0mC0eE+1d1oBWO
         slXgZRd5KEmDtHTqp0WkABnUd3kFaKbfqetVu5Q1Vvx7HpG2GObVpBMGlSnxBn9Pbdg+
         E814NkQNAWOS8MSmsSGtf57z6AhNjLJDBNrA89psI4DK98WJlANvYSmcBJrA3tWPJDFC
         hZEWpcbkHOBxgBv02aOxi8g2Y80PNCC9fjhb4DwuDEECEOjPE8t4kcrd/RXYCi3I4Reu
         VW1w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-454fe348864si163347101cf.732.2024.08.28.09.47.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 09:47:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) client-ip=212.227.17.20;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-624-SYOjx5eQMHCNoXfa1jylKg-1; Wed,
 28 Aug 2024 12:47:12 -0400
X-MC-Unique: SYOjx5eQMHCNoXfa1jylKg-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2630F1955D4B
	for <blinux-list@gapps.redhat.com>; Wed, 28 Aug 2024 16:47:12 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 215231956053; Wed, 28 Aug 2024 16:47:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1EA181956052
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 16:47:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6FCBF1955BF7
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 16:47:11 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-357-KWw7kLrZNEG4V-uh0Xc0XA-1; Wed,
 28 Aug 2024 12:47:08 -0400
X-MC-Unique: KWw7kLrZNEG4V-uh0Xc0XA-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MAfUe-1spzfN1P7Q-009SdH for
 <blinux-list@redhat.com>; Wed, 28 Aug 2024 18:47:05 +0200
Message-ID: <3f7732c9-1f9a-4b95-b2bb-005f1870ede7@gmx.it>
Date: Wed, 28 Aug 2024 12:47:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Grants for developing accessible software
To: blinux-list@redhat.com
References: <20240826195903.wwlxwqjipjjxnc7k@sprite>
 <b7d0dc90-b882-46c4-b089-fe861f0175a7@gmx.it>
 <8f39b1ff-64ee-4d51-bc0a-ee991f3b14db@gmail.com>
 <78c726c8-e793-4eac-99d5-ffdf2d80a1bf@gmx.it>
 <7d7001bb-d756-7e48-28fe-80bf65998770@hubert-humphrey.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <7d7001bb-d756-7e48-28fe-80bf65998770@hubert-humphrey.com>
X-Provags-ID: V03:K1:APYcIddBhW0UFSOf11jSTI6vRS8PupehKZ4TgyalHhNOcPmLK43
 msvoH8ijZdHYR7t+ejr+ttbIBT6wzU5h5GThIbdzpUQm0VYcAhG5afyj/gIXvxW+pnlY7Af
 KpB0X0iXwCmchLkUzveLW3lb1rGPecelyt4Buc6xBriRAVFq1XVt7v3q9N3/PpdvtbmONGi
 SG/z9oY9B52rscdsxlQLA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:vg2FKPRCyv8=;KRMcSF2Af9oIbx1NZWSsqmu3t7V
 zq7pPUW9L3MWrFGtH5zwOolOJtcHVt3S4B97tyaFeUzPaC565gkZfSsw712n/gFiThLc7sk4x
 eDsxZHMIHK7OFDoToRy+q9Umt8H4DUYgJxxFMSdAdxW01K9j+XTU3pPAAla70OM2k7QBuVyXz
 1ob4abDCi93gPJmbRYSjA+UVRJ5PjLj3CQfo55BiDgX1ZXu1+shuJ5bVep4QgT4SkkkHENp73
 maswgiZsFkJwd8xDkv5z4FzQLO49maC4QRM4hpl4p4xG2bR6uaOAN7GfdoG/yuE7hz6bAjp/r
 I0pa8IfQeLStE20A6AXuMhTmZyZoCzgQZtV6qjy+Ebrid9gmICTSjeJgeNyEDZrWOO8/2GeJ/
 ygSdOK3KHQy6SKI945XhKJTqWKWailY77Yh9inrbEa6qpdzX4iNn7yXF+N6mNmkuM0ayYkNqn
 0/D4GfUnR0kKoaKqDqZd6C8kzYyHYODdthgFkp6mQAY2EtyzTxgm587zBa49cvnHSvHct+Gqu
 HT2VvUW+GUkxDPzDKTHWFpsFtQ7rLTDEllU7I+fQfK1WoKe3PQ6m7ZC+W608uTzZhLQttDdKh
 ksKziz/Vgbza1L4OZfUVVx6XsejiltWaeVfQCnQYIH1Jyfi2Q1vpA58l7Bmszl+5HpFiUUCAq
 dZw5bxTB3X4EQOIVqqU6M0KoBaJFEvqsnQ26XT6CG5hhZWXs6xlYzuqdeT5cvWZHMb26jgTG+
 ZGUYlS0Qo17ZvIYSTPUkwBIxGBrnbw8VKKRXGCZ4HObetxARB4g+PP/ZtusKpDnD32+YQiQtY
 BmgfbQRrqzfkbsboD/3LN3j/JVj52XJjK34j/wBoUKpiw=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

Tenacity started as a fork of Audacity 3.x that simply removed the
telemetry code. It also removed the age restriction in Audacity that was
as I recall found to be illegal, so if I remember correctly it no longer
exists there either. Since then though, Tenacity has cleaned up the
codebase quite a bit, and it has been reported that it may run faster
than Audacity these days. One of the main goals is to make it more
simple to use, but this is subjective of course. Like Audacity, Tenacity
I believe has appImages available if you want to try it out without
making major changes to your system or building it from source.

https://tenacityaudio.org/

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

