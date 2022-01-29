Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 719674A32A0
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jan 2022 00:33:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643499224;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IeUwBk9iq96W/gBtPhzpyiFm4pgKRYeAVelld6BEH0w=;
	b=O8kDmMT4pGeASNWXeJOsQkMEznyYVdXLvnrs74OVhLSPlozDt0NIXUVLEZuWi093FePtQM
	gdng6w6uJHoCGxJEHjtVKp2cAf2JEsXdVSE4fV4nFJW0memNu6Q4P9g6aiV0BJjDieaNJ3
	K71jsUr6avWxCg5bKSx6oHHIupyzW9Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-341-FHt97dprODqzVunwDwH2PQ-1; Sat, 29 Jan 2022 18:33:40 -0500
X-MC-Unique: FHt97dprODqzVunwDwH2PQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B67A814243;
	Sat, 29 Jan 2022 23:33:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D92A5108C6;
	Sat, 29 Jan 2022 23:33:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9D7234BB7C;
	Sat, 29 Jan 2022 23:33:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20TNXKAk016883 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 18:33:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7A96D2026D65; Sat, 29 Jan 2022 23:33:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 764902026D4D
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 23:33:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9128E802A5E
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 23:33:17 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
	[209.85.210.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-351-ctmH-E_nPF-E2QXGzDiUBg-1; Sat, 29 Jan 2022 18:33:15 -0500
X-MC-Unique: ctmH-E_nPF-E2QXGzDiUBg-1
Received: by mail-pf1-f179.google.com with SMTP id e28so9502804pfj.5
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 15:33:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=M+PYeUiZHTjAQnIYNavlZJIQX3d3SPjVbdXASI/3SSk=;
	b=qHVvZ7zTfkaluVAYdCepjTV8x3QB0HEejxszSpK/436XTV0Nd6p79PO7NtibQz+pV0
	fET0Rfgpgj4jHM1ifZ/5jvgKIhGzdjY9lqIVYSeChRAG4NvDO2cKfr5cTN9+XU2+oYOP
	/uKGN+P7tOW7ExQcgyeBgP0VOaLyoj8uCdq9G25tR5ujqV7rPI4Jtx60eaEuFEnKIonG
	TV70o1KOEfEc94sXEsauVI13wWwlChBsFQL5gdK1BdFizTeb0EQUCuoi/CrE+bM41RiD
	ur69sCI87kjUIpby+MS1B59++Meo4Rl8zkuBKoQhhRRxSGmcFqCbbBczIr3ywct1G2vS
	9WWw==
X-Gm-Message-State: AOAM530C+zmdhrhCdOZ9gaIfIKrOZigEcCVRMPJ6WKu2P5YsillhoZ1H
	xAxml+aoQ9oQWT3nTiVZBLyFjL3/F05emXnF6bKEQYAv
X-Google-Smtp-Source: ABdhPJwNFTSR31dQErG1cOHOWqlN5MajjypLNJCVSsr94wZZf7zAfNORW6gjgJGM+jnlPzWqrUr6fcTlqkpvee7HQIA=
X-Received: by 2002:a63:97:: with SMTP id 145mr617304pga.431.1643499194481;
	Sat, 29 Jan 2022 15:33:14 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:b655:0:0:0:0 with HTTP; Sat, 29 Jan 2022 15:33:13
	-0800 (PST)
Date: Sat, 29 Jan 2022 17:33:13 -0600
Message-ID: <CABKqQvE2KeysktiCcXVCoii4+4JSD601pkAdzKjoBYgE__WO+A@mail.gmail.com>
Subject: How do I customize punctuation pronunciation in Orca?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When I read code, I have started shortening the punctuation names.
I've noticed that all letters except one have just a single syllable,
while punctuations like '!' (exclamation mark) take five full
syllables. I can't understand stuff in the middle of all the spoken
parentheses, brackets and so on, unless I shorten them to something
reasonable. How do I create my own punctuation table in Orca. I notice
also that Orca keeps saying "capital" before every upper case letter
that I type. This is useless and annoying. I have caps set to icon,
and there is also the usual rise in pitch to tell me that what I have
entered is uppercase. I don't need the verbal clutter.

I know that emacspeak does all of this, but emacs+emacspeak takes a
long time to set up, and the Orca folks really shouldn't be using
Emacspeak as an excuse for an underperforming screen reader.
Amanda[0]

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

