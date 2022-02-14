Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 335EC4B54CF
	for <lists+blinux-list@lfdr.de>; Mon, 14 Feb 2022 16:31:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644852671;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c93OcMZm2kSYVkZGCOyAKeAX4PMlIvZaHp2QhLvUgi0=;
	b=R7xEAPG2OWlupucI6UwhylZZJLP3XSTXkvVzKHSvnfPWfcQYfryRRpuFfn++FuVEanmYL0
	oEVo0prVJ8NuYbGOLCk2qesk6jxKEmJ3UjhjCipNIxKrfeAopWtQ7Uz0BtdY448rAktAMF
	L+WSi7X3Gr4g21jFHWFZEHttSN49dQ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-13-Nrer81QpNzalm_XUpYfQIQ-1; Mon, 14 Feb 2022 10:31:07 -0500
X-MC-Unique: Nrer81QpNzalm_XUpYfQIQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 76D651DDED;
	Mon, 14 Feb 2022 15:31:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 24E311086497;
	Mon, 14 Feb 2022 15:31:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3EEB81809CB8;
	Mon, 14 Feb 2022 15:30:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21EFUtUp019485 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Feb 2022 10:30:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3A43A1466C43; Mon, 14 Feb 2022 15:30:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 360B11466C41
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 15:30:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1BD43811E76
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 15:30:55 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-57-96bWAOvdMIGu657g7T3b4A-1; Mon, 14 Feb 2022 10:30:53 -0500
X-MC-Unique: 96bWAOvdMIGu657g7T3b4A-1
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx104
	[212.227.17.174]) with ESMTPSA (Nemesis) id 1MHXFx-1nX3RS0VmL-00DWlL
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 16:30:51 +0100
Message-ID: <20220214.153145.899.28@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: How do you customize the way punctuations are pronounced in Orca?
Date: Mon, 14 Feb 2022 09:31:45 -0600
MIME-Version: 1.0
In-Reply-To: <CABKqQvFFkhtQg1y37tFVfWEogVi4=eQ5uTT4VYAGDNGViMF-Gg@mail.gmail.com>
References: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
	<f8278111-3fc6-107d-d5fb-8f85587232c8@gmail.com>
	<CABKqQvFFkhtQg1y37tFVfWEogVi4=eQ5uTT4VYAGDNGViMF-Gg@mail.gmail.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Provags-ID: V03:K1:vKCB/+UxFaQbJz3c4f1FkK+9IjJxKwVcy3ZEK62Gln4x/QK8KxI
	ibbab03d8nn42ZWgcwr0l+PNmAZjiP1olKMj6pBxsR0E605DVM11xCoup4dr4ip1kQ+UfVZ
	jPEo7OnCHteU1dj8b507aoNzWgVrADhRzwsv9aWFXWTn225e1FwF8WxsFUitQ9NeRmsY2F/
	A4e/pUg5mcuT97zMVgAVA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ov5admSIqeQ=:9Qu/1dhU0Z6DRP1nzAOyx/
	siUV83BjT5bcrauZqHrTYg5Cde2v0kAdroSRD00ggqgBPLjeu6uCvJVO0546iyB84WTl552da
	HKash1w+ZGakieApFAFio8xPrePyhf+gff5aqMMH26HToN2XhmZt2WlxbpaWYleHbqAqhPE8S
	4D/BFWIDkq8MpETrtmOKsMGV/GkqlmoYzi+05bhAuNJjPgCxz+BGGPvVYLiKOTehNiQnBUsei
	RPUmWNgGTPz+g87Aykah5oUigzKlGBChJ6n10ACpE1BT3HGVo+YjqB6UYUT9jVRQ8I4Rpq7e3
	4Me/gC9mM0XnryfDYEQwRPgGs4iNzfR32zNdxytT9ziXDctBRlVgrs56c0QpPAikktxnnDvHG
	bdaBgj+oOG20vuPtFFwkJq02PNmR3ej4AbtVOtluJNlJzz7A45egW9G1JX8eehv+CtiaFIbrh
	uuxLg0Hd4q8cKe7mgrhytxJyYYuVY+5A6wCRQYZRz64tMfrjh28iwEKQOLT8+5zM490MJHagv
	/6Id6ugROFdE1HtkMvQ6y1RiNa/4+5gmrUhzAy9mE1A/MeZeV7UssNV7DQwzSEur/dSAqDp0C
	LWlstRxvst5Tu2gMKnhSfkv77ye5QheBB5L3yH+DEuUNrWD66llxud+DE70rVEC7FpCw8H42A
	d+FMyQiKkGtvU/aflwK8YyBWtkKdw4WT79h2fxY7QFTVOK/GXEh8m3WXqRfeTqa57U4nOxb12
	64zQYU5unzRYvWg4lW7TWyWGP05lY1xxOYabdczHNkv3IVmUKya5AAS001yGrshyrQS+y+35Q
	N+25gfy6DQqjf7xsO8u2JtMIefgMeh82ZA7CiHNiYB4vlfcmzVf5jXZ2hK+DLz7BT/IhrZCCz
	238KfzUVWuLOkvChotr5BG8DcgcxgNp+Sg4JxQg3ca8H6v89q3xl8yu0/uzf5oOG8+nMOrqI3
	Fq7dZc2KXDLlPJzvPkcwWExywq5vGOg5F0+JLMmG1pgTUN56EPiwTu5oaYbosZJuRuLZ7BIHd
	As7JADRSiSikyw6MAsw6HZJkEGd0NdCFiuE+tR88qrgLF1A411u26Au0pQxTySs7lxFo16HOk
	ME67KA6PVMrSLE=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21EFUtUp019485
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

Don't you have to fix punctuation pronunciation in speech-dispatcher itself?

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Mon, 14 Feb 2022 09:16:45 -0600
Subject: Re: How do you customize the way punctuations are pronounced in Orca?

> I tried adding entries to the pronunciation table, but strangely, they
> vanish after a few seconds.
>
> I Open the screen reader prefs, selecting the Pronunciation tab. Then,
> I select New Entry. I add a punctuation to the first column (e.g.
> '!'). Then I tab to the next field and add a pronunciation string
> (e.g. "bang"). Then, the entry that I created just disappears. The
> table had one row when I was entering stuff, but a few seconds later
> it shows that there are no rows. This is so weird! What am I doing
> wrong?
>
> Amanda[0]
>
> On 2/13/22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > Hi,
> >
> > Perhaps what you're looking for is Orca preferences > Pronounciation
> >
> > There you can set pronounciation of character or word.
> >
> >
> > HtH
> >
> > On 2/14/22 06:44, Linux for blind general discussion wrote:
> >> I know you can switch between the usual All, Some, etc, I want to
> >> control how punctuations are pronounced, e.g. '!' can be spoken as
> >> "explanation mark," "exclaim," or "bang," When I am writing code, I
> >> like to hear the punctuation, but shorten it as much as practical.
> >> This makes code easier to read IMO. Is there a configuration file that
> >> will allow me to make these changes?
> >>
> >> Amanda[0]
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> > --
> > Edhoari Setiyoso
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

