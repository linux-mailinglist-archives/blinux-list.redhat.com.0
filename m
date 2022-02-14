Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A484B4B5615
	for <lists+blinux-list@lfdr.de>; Mon, 14 Feb 2022 17:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644855848;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=J7KIi3pBZlva/WWrhLCp1aujldiw2vt0JB6zdPFJPNE=;
	b=HY8+htZwDpH2w9pnWP0+yI3VNLHEnLh0NUrz3gNhYMKTrdrfqrZJINkggfdTgtr+P9xX0Z
	wLDvFz5QAE9jKaw8jzri5GEGv5etDelsSPuSByW043EO/+rEz8sNQoDy7db5M+LyvOkCAj
	r9G2uB982L6bpHBP4zpPRE1i/jTVBe0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-203-e0pmmeWsMhaju_I9uuJVxw-1; Mon, 14 Feb 2022 11:24:07 -0500
X-MC-Unique: e0pmmeWsMhaju_I9uuJVxw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 15522100B3B9;
	Mon, 14 Feb 2022 16:24:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 66C091091ED7;
	Mon, 14 Feb 2022 16:24:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D99E8180B654;
	Mon, 14 Feb 2022 16:23:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21EGNoFM025448 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Feb 2022 11:23:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2447740C1241; Mon, 14 Feb 2022 16:23:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 203B1400E123
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 16:23:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 092611800046
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 16:23:50 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-458-BvCiM6l-Nn-Q2YLrcGPN3Q-1; Mon, 14 Feb 2022 11:23:46 -0500
X-MC-Unique: BvCiM6l-Nn-Q2YLrcGPN3Q-1
Received: by mail-qv1-f53.google.com with SMTP id o5so15198117qvm.3
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 08:23:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=1LlhzoUDQQ2oeU+Scd8JvHG4ZJ7F5s54PEuBOe5WLcE=;
	b=N37GVL8fUb1K/EieFCUEFD8WEyRuTy6Qui6UkkknnmsxjvJOPoba/aTFLuxrRUQEEy
	fPgBBX46OIwUoGGsp0KhucWjHjHZIv248Qhf5RKkG4kdm/tn6hvRXQjJ5GHfW/VSh1Y2
	a/OillNx0htYsfSWwWWF6YJdQOawl72FNZExNpwGzbUZN6RqgAATD8WPeOVrLrwzs7hx
	plnzDNgErbjsGtvhjWWMMPIM0dwAJs6nLVtic9pXVSJSytfpCpgHyzTMc9KpHMQrLgR1
	t1lrYa93l9+Y5iMaVdtzJRqISQxQiEVS8xwKYguiu+TxjnQQrjeHcmbSdmJ81nVvx50T
	O0Pg==
X-Gm-Message-State: AOAM532YXkScRzYY5Tcg4h41bbOH0ZUOXULrHLi2qfw1H5E6ujRZ+9Gv
	p3l/n/h12Y45rUIeYxPWcWa4DVefPiA3MgJCQt++RsjNEzM=
X-Google-Smtp-Source: ABdhPJwmYYUYxvUOHQm3Q4Sf5aExlIPL4lzr3nbNfZ2jWfYQcfvZJxwp0041VSDJkIODIa6j8lS2BXoiRK9iYabq2uU=
X-Received: by 2002:a0c:f6c2:: with SMTP id d2mr240787qvo.105.1644855825999;
	Mon, 14 Feb 2022 08:23:45 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:d06:0:0:0:0 with HTTP; Mon, 14 Feb 2022 08:23:45
	-0800 (PST)
In-Reply-To: <20220214.153145.899.28@192.168.1.100>
References: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
	<f8278111-3fc6-107d-d5fb-8f85587232c8@gmail.com>
	<CABKqQvFFkhtQg1y37tFVfWEogVi4=eQ5uTT4VYAGDNGViMF-Gg@mail.gmail.com>
	<20220214.153145.899.28@192.168.1.100>
Date: Mon, 14 Feb 2022 16:23:45 +0000
Message-ID: <CAO2sX30a0b3abFF-gn8m3sCFWcg6i5RQRB6P-o_+9d4FMaaV3g@mail.gmail.com>
Subject: Re: How do you customize the way punctuations are pronounced in Orca?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Well, even Orca isn't consistent with how it handles #, saying
"number" as I type or read character-by-character, but saying "hash"
when reading line-by-line or reading all. Orca also read * as star
when typing or reading character-by-character, but asterisk when
reading line-by-line... admittedly, the latter might be a good thing,
star is a common enough word and * a common enough symbol that
distinguishing the word from the symbol is probably useful. Hash is a
rare enough word that it's probably safe to assume the symbol in most
ambiguous contexts.

On a somewhat related note, part of me wants to force my screen
readers to pronounce W as "vey". Is there a way to do that short of
switching to German and likely screwing up all other pronunciations in
the process?

W sticks out like a sore thumb in the English Alphabet, both in
pronunciation and Braille, and while the latter can be blamed on
French not having W, I don't know what's up with the pronunciation
when English  has roots in the Germanic Anglo-Saxon language and
modern German has a monosyllabic name for it.

On 2/14/22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Don't you have to fix punctuation pronunciation in speech-dispatcher
> itself?
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Mon, 14 Feb 2022 09:16:45 -0600
> Subject: Re: How do you customize the way punctuations are pronounced in
> Orca?
>
>> I tried adding entries to the pronunciation table, but strangely, they
>> vanish after a few seconds.
>>
>> I Open the screen reader prefs, selecting the Pronunciation tab. Then,
>> I select New Entry. I add a punctuation to the first column (e.g.
>> '!'). Then I tab to the next field and add a pronunciation string
>> (e.g. "bang"). Then, the entry that I created just disappears. The
>> table had one row when I was entering stuff, but a few seconds later
>> it shows that there are no rows. This is so weird! What am I doing
>> wrong?
>>
>> Amanda[0]
>>
>> On 2/13/22, Linux for blind general discussion <blinux-list@redhat.com>
>> wrote:
>> > Hi,
>> >
>> > Perhaps what you're looking for is Orca preferences > Pronounciation
>> >
>> > There you can set pronounciation of character or word.
>> >
>> >
>> > HtH
>> >
>> > On 2/14/22 06:44, Linux for blind general discussion wrote:
>> >> I know you can switch between the usual All, Some, etc, I want to
>> >> control how punctuations are pronounced, e.g. '!' can be spoken as
>> >> "explanation mark," "exclaim," or "bang," When I am writing code, I
>> >> like to hear the punctuation, but shorten it as much as practical.
>> >> This makes code easier to read IMO. Is there a configuration file that
>> >> will allow me to make these changes?
>> >>
>> >> Amanda[0]
>> >>
>> >> _______________________________________________
>> >> Blinux-list mailing list
>> >> Blinux-list@redhat.com
>> >> https://listman.redhat.com/mailman/listinfo/blinux-list
>> >>
>> > --
>> > Edhoari Setiyoso
>> >
>> > _______________________________________________
>> > Blinux-list mailing list
>> > Blinux-list@redhat.com
>> > https://listman.redhat.com/mailman/listinfo/blinux-list
>> >
>> >
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
>
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

