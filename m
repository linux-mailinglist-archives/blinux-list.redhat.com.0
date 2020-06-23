Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id E83292052FC
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jun 2020 15:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592917387;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KaayTUC2HHq9awRsKidAuVebwyiNZTsPTx7nIwxjxh4=;
	b=X4Il5zCoQUllAOnK7unKwk5HPIT0GSk+Pq1WHnH+/dlOiOsRU2xUBahKdPb78ezOXowYrf
	1wXtlxl7RXEco/g0IOvvBAdzVNIXLj3OZ2xZFkyNznGeyZKKHOscGcy/8L0rAh17NmwqQc
	cv09vfDyd+X4MbIKmEJqUi4C4lUpiJ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-NjMbdwc8MLWaI56EB2iOBw-1; Tue, 23 Jun 2020 09:03:04 -0400
X-MC-Unique: NjMbdwc8MLWaI56EB2iOBw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AEAFC10059A9;
	Tue, 23 Jun 2020 13:03:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A5965D9DA;
	Tue, 23 Jun 2020 13:03:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8777F1809547;
	Tue, 23 Jun 2020 13:02:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05ND2vju001195 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Jun 2020 09:02:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E271D217B436; Tue, 23 Jun 2020 13:02:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE296217B437
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 13:02:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BAA3B811E77
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 13:02:54 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
	[209.85.167.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-417-F8_YBGOhML6RtjNpDphWEQ-1; Tue, 23 Jun 2020 09:02:52 -0400
X-MC-Unique: F8_YBGOhML6RtjNpDphWEQ-1
Received: by mail-oi1-f174.google.com with SMTP id r8so132736oij.5
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 06:02:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=mia7Tsk283dp205Jc/R1rVm35yre40ua27Q5i5QTyvY=;
	b=AcXJKyM80Nj7WiXY862tuOQsgrDuCSGpMA8W1UdxYfSuARgPnte6Uiqf6b/Mk4QU/N
	0NK9adWYTlIW8ANo+1YN0XV5jJfnZWgQQIs7RRfmdODUf2S5wmCncPCGrwnouJp6gyf9
	N583T59FZjbvFTviE512t3jGyU7GBw8u3J6WgTZWHA7pb/jqEpvQIpUNsWDTzXeiawfs
	DV7b96gfPOy7iy45Ya9E4mNNbjAWWHFw8hNRa1xq8H4OWqWFSX98PbBYA3Vh/d66WN5C
	P8sda36WZgrt9P5xO4g2oG0Du8ZHN8BSEq5jwaHKUUYWjpcABRWWEkux/g0UwH8G37dW
	L4qg==
X-Gm-Message-State: AOAM532cgH2OKjFuBCkj3Ta1dU+5CAW0viZ4aNFzasL8qsqvghFucv06
	PxDPIfVfBJS3WDVDhaYD1wBXDN4m0O0=
X-Google-Smtp-Source: ABdhPJzw1c5Ru68ett81TcZB5fILnVqLMksj+TjhkUh1TthCuzrKEMvJ1GHJuY1f9GWAa0RUcsBRpQ==
X-Received: by 2002:aca:f5c7:: with SMTP id
	t190mr16524386oih.157.1592917370809; 
	Tue, 23 Jun 2020 06:02:50 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:5c29:297:62a2:3c?
	([2601:3c2:8200:9360:5c29:297:62a2:3c])
	by smtp.gmail.com with ESMTPSA id
	c13sm4046835otm.78.2020.06.23.06.02.49 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Jun 2020 06:02:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Tue, 23 Jun 2020 08:02:48 -0500
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
Message-Id: <63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05ND2vju001195
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I did not know Trisquel was still around.
I tried that distribution years ago, and could not make it work.

> On Jun 22, 2020, at 10:14 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Somebody here mentioned that I might want a laptop instead of the
> Meerkat. So, I went searching for free laptops and found this one for
> example: https://shop.libiquity.com/product/taurinus-x200
> 
> It runs Trisquel 7.0. This comes with the MATE desktop and Orca is
> supposed to start up automatically. This seems like good news. As
> someone who has never used Trisquel, is there anything I should be
> aware of, e.g. inaccessible software?
> 
> On 6/22/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>> My objection to using "literally" figuratively is that we then have to
>> find a new word for literally.  In the example here, "exploded" is
>> enough and is figurative anyway.
>> 
>> 
>> I'll skip the other stuff, and take a second of amusement that this
>> became a topic on a Linux list.  (Then again, computers are quite
>> literal--in their numeric fashion.
>> 
>> 
>> Best!
>> 
>> Al
>> 
>> 
>> On 6/22/20 6:47 PM, Linux for blind general discussion wrote:
>>> Yeah, I don't really get the objection to the word "share" in the
>>> context of telling someone about an experience, and while saying
>>> someone has issues is vaguer than saying someone's nuts, I don't
>>> really see such as euphemistic... granted, someone having issues could
>>> just as easily refer to everyday stress and/or bad luck.
>>> 
>>> I'm also okay with the word "literally" being used figuratively(e.g.
>>> saying someone literally exploded as metaphor/hyperbole for a fit of
>>> anger).
>>> 
>>> Then again, perhaps my inner linguist is just more of a descriptivist
>>> than a prescriptivist.
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

