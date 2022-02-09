Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 089384B00C9
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 23:57:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644447450;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=DHNbgJgtbNmH94griX8Q1Zjmh1GLh4qITFT0NJPZd48=;
	b=gigpXx90BcY5+2/Lbrk4aLlqQSFiAfmc3Hs22gZpynfZYhQu9Qu4dDZqMEQZVd9YNs9TTV
	D4dt4kxscSFVSDFaDuzle94iAbpfa7A1NGju6NrcXHnUflJlsMQKpDVB5rhZGVJkCA6hT0
	czoufhuIa9Twi5qE2qIDZvBb64/woik=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-9E_Hb0G1OK-9bh1vdjHAFg-1; Wed, 09 Feb 2022 17:57:26 -0500
X-MC-Unique: 9E_Hb0G1OK-9bh1vdjHAFg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AEC5E801B0B;
	Wed,  9 Feb 2022 22:57:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 473B54EC7F;
	Wed,  9 Feb 2022 22:57:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4AEF21809CB8;
	Wed,  9 Feb 2022 22:57:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219MvGVQ022711 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 17:57:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 469FD141DC29; Wed,  9 Feb 2022 22:57:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 42F24140242B
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 22:57:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 29BDB800B29
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 22:57:16 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-199-zs5NTkYRP5ShACdF2sbaBA-1; Wed, 09 Feb 2022 17:57:14 -0500
X-MC-Unique: zs5NTkYRP5ShACdF2sbaBA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 314BC620CB1; Wed,  9 Feb 2022 22:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 2C1D76200AE
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 17:57:13 -0500 (EST)
Date: Wed, 9 Feb 2022 17:57:13 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Coqui TTS has blew my mind!
In-Reply-To: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
Message-ID: <Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-2049715565-1644447433=:340174"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-2049715565-1644447433=:340174
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Where are the audio samples?
The words are presented, but save for a single YouTube link, there is=20
nothing  to download, at least not in command line lynx.



On Wed, 9 Feb 2022, Linux for blind general discussion wrote:

> Hello everyone,
>
> may be I've discovered America, but yesterday I mostly randomly came acro=
ss:
>
> https://erogol.github.io/ddc-samples/
>
>
> And the voice has completely blew my mind!
>
> Like, I knew the TTS area has advanced significantly in the recent
> years, but I thought the new neural voices are mostly closed features of
> companies like Google or Microsoft.
>
> I had no idea we had something so beautiful on linux and completely
> open-source!
>
>
> Plus, it's not just the license that makes this so interesting, but also
> the usability.
>
> There were the Deepmind papers even before and some open projects trying
> to implement them, but the level of completeness and usability varied
> significantly, even if a project was usable, getting it to work required
> some effort (at least the projects I saw).
>
>
> With Coqui, the situation is completely differrent.
>
> As the above mentioned blog says, all you need to do is:
>
>
> $ pip3 install TTS
>
> $ tts --text "Hello, this is an experimental sentence."
>
>
> And you have a synthesized result!
>
>
> Or you can launch the server:
>
> $ tts-server
>
>
> And play in the web browser. Note that the audio is sent only after it's
> fully synthesized, so you'll need to wait a bit to listen it.
>
>
> The only problematic part is the limit of decoder steps, which is set to
> 500 by default.
>
> I'm not sure why did they put it so low, with this value, the TTS is
> unable to speak longer sentences.
>
>
> Fortunately, the fix is very easy. All I needed to do was to open
> ~/.local/lib/python3.8/site-packages/TTS/tts/configs/tacotron_config.py
>
> and modify the line:
>
> =C2=A0=C2=A0=C2=A0 max_decoder_steps: int =3D 500
>
> to
>
> =C2=A0=C2=A0=C2=A0 max_decoder_steps: int =3D 0
>
>
> which seems to disable the limit.
>
>
> After this step, I can synthesize very long sentences, and the quality
> is absolutely glamorous!
>
>
> So I wanted to share. I may be actually the last person discoverying it
> here, though I did not see it mentioned in TTS discussions on this list.
>
>
> I've even thought about creating a speech dispatcher version of this. It
> would certainly be doable, though I'm afraid what would the synthesis
> sound like with the irregularities of navigation with a screenreader.
> These voices are intended for reading longer texts and consistent
> phrases, with punctuation, complete information etc.
>
> The intonation would probably get a bit weird with for example just a
> half sentence, as happens when navigating a document or webpage line by
> line.
>
>
> Another limitation would be the one of speed. On my laptop, the realtime
> factor (processing duration / audio length) is around 0.8, what means it
> could handle real-time synthesis at the default speed without delays.
>
>
> The situation would get more complicated with higher speeds, though.
>
> It wouldn't be impossible, but one would need a GPU to handle
> significantly higher speech rates.
>
>
> So I wonder.
>
>
> But anyway, this definitely made my day. :)
>
>
> Best regards
>
>
> Rastislav
>
>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-2049715565-1644447433=:340174
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-2049715565-1644447433=:340174--

