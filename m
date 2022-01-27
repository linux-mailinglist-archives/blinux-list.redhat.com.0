Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8049549D822
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 03:40:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643251249;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PYRoU0sTIy4Miq6Mn32uvu3jcJrpgI/LIjtSYain8J4=;
	b=SI18YoGYXjaBdNVdvFTmJxmmHx2tCfIR8sGewe70iKJ0Hi2wM8M9ksx2YxsXbJVQ52H6S3
	C8CThrqarKvgU54szuwKNKtjnT0qV2Q2FIvB1QxPx9Jge0qcb5X2mXuIuxEqVsA0TVjzj7
	JV8zjn1Lq9kWJw2I3o5gpEr0+4VxHu4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-336-OnOyge5WNyGsOejfAYpHcg-1; Wed, 26 Jan 2022 21:40:45 -0500
X-MC-Unique: OnOyge5WNyGsOejfAYpHcg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A79D1083F62;
	Thu, 27 Jan 2022 02:40:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 087E45FC22;
	Thu, 27 Jan 2022 02:40:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 96F051809CB8;
	Thu, 27 Jan 2022 02:40:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R2dPjZ015677 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 21:39:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F3BF7C080B3; Thu, 27 Jan 2022 02:39:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFD37C080B2
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 02:39:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D6F32380670D
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 02:39:24 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-418-tXFmu7SeOYOtxbbLXQNnlg-1; Wed, 26 Jan 2022 21:39:23 -0500
X-MC-Unique: tXFmu7SeOYOtxbbLXQNnlg-1
Received: by mail-qt1-f171.google.com with SMTP id r14so1397587qtt.5
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 18:39:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=TA0PdcOc3VgzKCs2NB/IX6/lCmzAT1drtnAdzkiIqlc=;
	b=qbFGA+hF5v/rRkkS/1/4wJ6uA3MyPP9/QKSNZ5a43sO+wdDVX0lkobWcg8yJ6od9La
	PLg7ZRRtCS+l+q7iTpaVReomRnTClx1+JeDQqamvkRbnsUB8oMQ686Tb9jGxJq4uyPH+
	KLG1REFtEm76DmYt8LKfqs57xyxV5K1joTnntNPQnBeoAeMnrscGgkvS8F0b7JqN7ekD
	WphnQHAzcKjIICA48dwrW41xIowK9jgXO0yCkxfMxRL/gxkCAbOCltG4vrjLon7YkrP0
	vE6SIaPcHTWCKU4YLrIv6+P/nDvSdNadj0OcFAiPpsaET7/37UPJJJWvQeBT3XR0EcFh
	tHfQ==
X-Gm-Message-State: AOAM532I8mfZk0tC/bcy+0v2faxni8KLnkmhcLTMJt6p/MHBAqm+gcSl
	F6EbRzJ4Y482AF7u+C+hIiWiKK2EKp2zNmL/b5wZOJ6a
X-Google-Smtp-Source: ABdhPJyUiZ122/TfDxF4Y0ETlkqDWlaEBTD8Gq/EUVjlkEkuM5DdTIg8H7AVjC+rVIRjWYl66f4pXVj1IMTYOb4JoiE=
X-Received: by 2002:a05:622a:47:: with SMTP id
	y7mr1210667qtw.215.1643251162428; 
	Wed, 26 Jan 2022 18:39:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:e8f:0:0:0:0 with HTTP; Wed, 26 Jan 2022 18:39:21
	-0800 (PST)
In-Reply-To: <Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
References: <20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
	<cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
	<Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
	<YfHvt+4aziezYwjx@panix.com>
	<Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
Date: Thu, 27 Jan 2022 02:39:21 +0000
Message-ID: <CAO2sX319aHogPMLp3gF10-H2sQBrH9Qgx=Nf=05ZKBAQJyumGQ@mail.gmail.com>
Subject: Re: Converting text to mp3
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I don't know how any speech synth, be it hardware or software works at
the nuts-and-bolts level, but I suspect the people who make the
DeckTalk synths have put more effort into ensuring their devices work
with Windows than they have for Linux and wouldn't be surprised if
they've never published any documentation that would assist with
building a deckTalk speech dispatcher module or whatever would be
needed to get them working with Orca. There's hardware far more
mainstream than hardware speech synths that have shoddy or
non-existent Linux support because the hardware vendor gave Linux
users no choice but reverse engineer how to talk with their devices.

And even if the decktalks are fully documented and it's just a matter
of someone with the right skills writing the needed bit of code, there
aren't that many people working on Linux accessibility, and I get the
impression people using hardware synths are a small percentage of an
already small demographic, so it isn't surprising that no one has made
supporting hardware synths a priority. Orca has only a single active
developer, best I can tell, Debian's Accessibility Team is one person,
the Slint distribution is maintained by one person, Vinux collapsed
due to lack of manpower, and those are just the examples I can name
off top of my head. I don't pay attention to what's going on over in
Windows land, but I would be surprised if NVDA doesn't eclipse Orca in
number of developer hours that go into it just by virtue of Window's
larger user base, and for all I know, the people behind JAWS might
have someone they pay just to maintain hardware synth support.

Admittedly, a missing feature really sucks for those who need it most,
but there's not much that can be done if there isn't someone with the
time, capability, and willingness to implement it.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

