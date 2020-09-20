Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 64AAF271451
	for <lists+blinux-list@lfdr.de>; Sun, 20 Sep 2020 14:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600605057;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=17VQP/E6ANVL1FqfMRcINAt6TsUPFwA/fwm7U7DakpE=;
	b=SND1KQH5m7SP+HT4+bu0KoTwMoL3OBqwsamV2YyCx0tKVTw05b+VMkMr1bj/cYYfwC3nnF
	ieWf/E+wcvA8TsqZo3rZgjcTlREeMLVyov5Ob9zOAqoATPXNMk1uAlkX81x6jpKlkBCKgk
	ZeROvfbhzAithe4ZSCbEMx92hlL/pS8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-5-52_5_1oUPx-_eTPdWuQxlQ-1; Sun, 20 Sep 2020 08:30:53 -0400
X-MC-Unique: 52_5_1oUPx-_eTPdWuQxlQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 191DA64147;
	Sun, 20 Sep 2020 12:30:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6075575261;
	Sun, 20 Sep 2020 12:30:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1EC41183D041;
	Sun, 20 Sep 2020 12:30:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08KCUgK5024404 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Sep 2020 08:30:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B0F15201C0DC; Sun, 20 Sep 2020 12:30:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB61C2028E91
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 12:30:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4CD75101A53F
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 12:30:40 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-410-7Q8Gjg2dNp2r4_AuXo3bzA-1; Sun, 20 Sep 2020 08:30:37 -0400
X-MC-Unique: 7Q8Gjg2dNp2r4_AuXo3bzA-1
Received: by mail-qk1-f174.google.com with SMTP id q63so12058503qkf.3
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 05:30:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=rBIJQzO7kI6OZ+aaykJ1suaJSTUcXXmND7gQIY8bOYc=;
	b=RTPpZRtHdS+h2g1ttKzxInAWB/xAl+lF459Bl8gV3h1CMrJ4QBdfQDvdM1ZsK+xlST
	0TiCOjRDtFQtJJHT+cD6hdKWutA3WUDniU5Wqe3lDFLCK5hHlEvesIuR0nNzCuzkR604
	1kCULduBjNtU+iRudVo48u9BMPEdRxBrQgdeFkAdhyAE7LYCP7lGnMWOvf3+tvQd8psv
	8c5sJxEuZ/EcX7efuTegSn5MiciOg6DuxNLZue6Q7AyJUop6WaHjIvWSZct/GIkHLjVX
	tpL0bw0M9jXyhfMEiRplETznhjRMX2jVZfxRE70EnWB1k6dpLNXmM1ST/rj3zayi0bKp
	fGRg==
X-Gm-Message-State: AOAM530wf+gYnQ/YBXRYs1c5Hj4ELLhROUzA/LIsOb3PTQO3Ec44nVKK
	WUt6bm55nomQF+EIbppnjuLKF1al+nPA1t2eM6sippK138w=
X-Google-Smtp-Source: ABdhPJyIBNhoqXyt7lcJ05Ngm1azN+ty66ilRp+OBB+sB/qE4FrBo5mwpZfQaHQ6AlmxUFl2pfVaLotU4C9ITYHd/WU=
X-Received: by 2002:ae9:f80f:: with SMTP id x15mr41508735qkh.341.1600605037300;
	Sun, 20 Sep 2020 05:30:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:cd91:0:0:0:0:0 with HTTP; Sun, 20 Sep 2020 05:30:36
	-0700 (PDT)
In-Reply-To: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
References: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
Date: Sun, 20 Sep 2020 12:30:36 +0000
Message-ID: <CAO2sX33mnR+cAMvQbzBxxC2LQ-KPK05ugp88cvN915a4zFGxwA@mail.gmail.com>
Subject: Re: ebook-speaker/UTF-8 long files
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have no experience with eBook reader, but when converting documents
to plain text, I find that using iconv to convert to ascii is useful
for ensuring files don't contain characters that fail to display/get
spoken properly.

the command I use for this is:

iconv -f UTF-8 -t ascii//TRANSLIT inputFile > outputFile

Note that TRANSLIT is all uppercase and ther's a greater than/right
angle bracket between inputFile and outputFile as iconv outputs to the
screen by default and doesn't, as far as I know, have a built-in
option for setting outputFile, hence the redirection.

I've only really used this on English-language text files, but it'll
do things like converting left and right curly single and double
quotes to straight quotes and I persume replacing accented letters
with their unaccented counterparts... No clue what it would do with
non-Latin text.

It might not help with your problem, but my experience is that doing
this cuts down on the number of "thorn" characters I come across
reading converted to plain text files in nano, and if the issue is
specifically with something UTF-8 related, it might help.

iconv can be used for other encoding conversions, though I've only
ever used it for collapsing UTF-8 files to ascii... also, without the
//TRANSLIT bit on the output encoding, I'm pretty sure the program
just halts the first time it encounters a character that isn't part of
the target charset(e.g. thare are no curly quotes in ascii, so without
the //TRANSLIT, converting to ascii will fail at the first curly quote
while with it, it'll convert to a straight quote and continue).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

