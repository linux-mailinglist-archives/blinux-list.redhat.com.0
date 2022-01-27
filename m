Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE8B49E5EC
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 16:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643296996;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2VS7+BeDxxFNXCehiUAFq8ZzqByu24Wr2pwcVo8tU5g=;
	b=Sx9fAyOPuCdUqwFnQuqhwkreowpxZMjF8UYwllWCFVF146Y0gvabhsQSbHBmw+66Vqa9Oi
	cyufJZTPH3rBO022Fwh4TH3QyJ4HdKhKtPIPa9xWHPjCjRJ/CglYPMhLx71jvEH/QnowDR
	Q6a/tTY2M+Z3c8JVyCu4azG2q689Lag=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-647-Jfllh6CrOPaBOd9spyinMg-1; Thu, 27 Jan 2022 10:23:12 -0500
X-MC-Unique: Jfllh6CrOPaBOd9spyinMg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 722D71B2C981;
	Thu, 27 Jan 2022 15:23:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22FCA703B8;
	Thu, 27 Jan 2022 15:23:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AF8A14BB7C;
	Thu, 27 Jan 2022 15:23:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20RFN1DR012139 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 10:23:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 62663141DED9; Thu, 27 Jan 2022 15:23:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E93B141DED4
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 15:23:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 43EAF1C084D6
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 15:23:01 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-208-LtoQMjIRNs2VbFJkZp3Ocg-2; Thu, 27 Jan 2022 10:22:59 -0500
X-MC-Unique: LtoQMjIRNs2VbFJkZp3Ocg-2
Received: by mail-qk1-f174.google.com with SMTP id 71so2878229qkf.4
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 07:22:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=tW5rXeJxsQZgfC7QEoTy/C5/adGeNAYy1OQVU5eY/VY=;
	b=XaxIGnneRim60yhyJoItru4aHflCLsKTZ356sCwhx2Xts+ZgYKwy2KPWDh+mGtY/C4
	WuoZwuPH3CRZHs2FxfMrXlqdBdyEZNvyCEBv9fsa1xmkuj5Bu7+D/Pscvhn7pRREYK+r
	0v/HyU4dNO9JeDteVIXxf8Y//zES8+mJTKWWTP928pKgESuJtUNHL70VE4Pd2Wy3UzOr
	q+7RWxFj4ULhxpOzYDnYJRuK8i7RyRMd5TZPtcQi6h3a+843gRtIJsqAGSj8T8uInDAq
	yTSdmv8h//+A4FyokLjQE8kPxFXiekR1kbzvOcf3L8Ehbo2POtDdAGYOJahSa41aGFeD
	3yfA==
X-Gm-Message-State: AOAM530oeUKSiM7vuiAJ9qxmWFrD6MbaKKKMrX9S5IKJ8UJXqT5z7iEV
	e8ZPaxogEAa26MbGiuGa04dCpl7c9jZ7R5pKYsFR/li7
X-Google-Smtp-Source: ABdhPJyX2wketshGYuq2wcv60seipMerd2QXjJ5fNwBbQ1KeBAnEkd3chUl5zOCfhk5XLOXX3Mjj0J9d1CV/l/cF8BY=
X-Received: by 2002:a05:620a:2892:: with SMTP id
	j18mr2933642qkp.449.1643296978425; 
	Thu, 27 Jan 2022 07:22:58 -0800 (PST)
MIME-Version: 1.0
References: <571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
	<Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
	<YfHvt+4aziezYwjx@panix.com>
	<Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
	<YfH3P14/As9FjG9P@panix.com>
	<Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
	<YfIP1c5bihD/wxmY@panix.com>
	<CABKqQvF2jRBAb=Rw9MzgCq-U_0r7rGNA1uqTodcrxKuTGYorrQ@mail.gmail.com>
	<CAPo=n-9UfJA2kW-Lc32Uy6X3Q+vU6TMHkz3GH+R2Y8bfmBFSeQ@mail.gmail.com>
	<5837cc1-6818-5533-c933-33ac47650e4@hubert-humphrey.com>
In-Reply-To: <5837cc1-6818-5533-c933-33ac47650e4@hubert-humphrey.com>
Date: Thu, 27 Jan 2022 17:22:47 +0200
Message-ID: <CAPo=n--NYTjU9H96NqvD3n9D2c5U5hdgE=sQ79dqgTqbKfTb5w@mail.gmail.com>
Subject: Re: Why do you use Linux? expanded from Converting text to mp3
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Chime,

Well, I thought my console was huge, but your's seemed to be bigger. So
your mail caused me to do some investigating.
The smallest font I could find here on Arch is something called
drdos8x6.psfu.gz, but that also only gives 180 rows by 240 columns. I will
dig some more, and let you know if I find anything.

Regards,

Rynhardt


On Thu, Jan 27, 2022 at 3:25 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hi Rynhardt: Please inform what font you are running-and-how many lines is
> it
> providing you? Here in Debian I have
> setfont /usr/share/consolefonts/Lat15-VGA8.psf.gz
> which has 180by240 columns, but running the same on my laptop, I only have
> 112lines. I know in Slint there is a font which increases nicely, but this
> second I cannot find my notes. Thanks so much in advance
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

