Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AA5E42B9BC6
	for <lists+blinux-list@lfdr.de>; Thu, 19 Nov 2020 21:00:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605816006;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Oomw8nmvfBGghwLC5kcGqSBC9vyuAIXi8FoqvPDRgBA=;
	b=JytjkP6OpGAMKMWxQEsGOAjameE0sdkxbQzpiZ0TJFiqt6PhkI+n8mZbasRQs9E60VXxyj
	ObZNKUYq/1uMcxGprgORGeZj/CytN7yayQnGWgX7hfsy0fBUhG+m0ylC2xBn00kjNIV4jT
	YLkeHgqswlffO7qDZ8f79tpzTQGJtyk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-351--zQqaNHnMcqhU6B4wk8juQ-1; Thu, 19 Nov 2020 15:00:04 -0500
X-MC-Unique: -zQqaNHnMcqhU6B4wk8juQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A190E18BA294;
	Thu, 19 Nov 2020 19:59:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 196DE19C71;
	Thu, 19 Nov 2020 19:59:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 21D334BB7B;
	Thu, 19 Nov 2020 19:59:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AJJxqse011223 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Nov 2020 14:59:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C4E50DEE81; Thu, 19 Nov 2020 19:59:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEFE9DAF03
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 19:59:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6024E103B801
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 19:59:50 +0000 (UTC)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-361-PWIw3896M3y13bzKLD6dIg-1; Thu, 19 Nov 2020 14:59:47 -0500
X-MC-Unique: PWIw3896M3y13bzKLD6dIg-1
Received: by mail-io1-f47.google.com with SMTP id n129so7448505iod.5
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 11:59:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=U2oiOsgbkLsh7nScq30gYcC9kdd85zQzQyLQ/j2i3xA=;
	b=AnKujfNNHSWKM0j+m9hsEP/VZQ7muTsAwpDHruMAWWov1bGBwiWAkiG+dmDaZfoT1+
	4Z5mpuO/L/WXoLAEd9cELMDZkj7pcZH65AXmPcUGOHevvilY8G0yNpTWpwVNxrje0ytL
	rHkxX5dy96xj0wMUrdTJDqu61B+ZwyeynHooj8vO0CmGbnt6l8hzJJXaRYRhCmtw3ygh
	amtuIeY2X6i8PJbvagdQa7zwxmoOr6gCUI9vKe7y0nwXNBqOwhzGNthF0S/rnxSc1Iry
	fwMtiUNHQD6op/DFpcAdBIA16t49MHf6R+04LEbiEp1p7HRo/cU+X4DQ3Acfh3GaZLnE
	amQg==
X-Gm-Message-State: AOAM530ZpCACwiuVZSbCXMbJUicM7I5akMuylYmzTOSn6X2iWXp7MaSD
	HsflM2gpErTitWiUpPeqjJ1pTMU7nFM/HGW/9WmQkqo71PLobg==
X-Google-Smtp-Source: ABdhPJx3H9ErTNf/CBigtjTKg/PJcNc0ojibK5WiaNrPRZ4/T8/3BqpQW+vLZoKnN5G+i6KTr40WRn6GJc5PJL/NqpU=
X-Received: by 2002:a5d:858b:: with SMTP id f11mr22636136ioj.0.1605815986422; 
	Thu, 19 Nov 2020 11:59:46 -0800 (PST)
MIME-Version: 1.0
References: <87wnyhf7zo.fsf.ref@yahoo.com> <87wnyhf7zo.fsf@yahoo.com>
In-Reply-To: <87wnyhf7zo.fsf@yahoo.com>
Date: Thu, 19 Nov 2020 13:59:34 -0600
Message-ID: <CAGJxbF6ErHJAGmFEjFrdcXU3iyNaf6_-FwtDasmWKGJga49d1A@mail.gmail.com>
Subject: Re: Producing Braille files on ZLinux
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If you have Liblouis, you may be able to use file2brl:

http://liblouis.org/documentation/liblouisutdml.html

Devin Prater
r.d.t.prater@gmail.com


On Thu, Nov 19, 2020 at 1:43 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hi,
>
> How do we produce braille files on Linux? Is there any software for
> transcription which works like Duxbury or Send to Braille? I just want
> to convert my ebooks into Braille for reading on a notetaker or for
> embossing.
>
> Thanks for your help,
>
> --
> Jay
>
>
>
> Pure mathematics is, in its way, the poetry of logical ideas. :
>    Albert Einstein
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

