Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 59E192109E1
	for <lists+blinux-list@lfdr.de>; Wed,  1 Jul 2020 13:00:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593601235;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0SWyNsFP2v4JZ6al7h7mlT0VvATNazWdkpWpAQ0qi2M=;
	b=WIX0vklLN/jlked+BtVLVtD2W/dxPmCcSj8iaGPcYK5wlGbKF3F71vApDaDX6EU0YDaea5
	+rsyewYe+jYHEC8VRx2bjS49UcuIpijhPRpBwfr13mQlJPAOD4eaQUs+XN9NvHzUjlykvM
	piFQTp8Hn49FZDXBDnHFT3idUzVI2qU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-118-o7Rm2Ha8MXmQoK6eEbaHWw-1; Wed, 01 Jul 2020 07:00:33 -0400
X-MC-Unique: o7Rm2Ha8MXmQoK6eEbaHWw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C5A0A1085982;
	Wed,  1 Jul 2020 11:00:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2BFC25DA27;
	Wed,  1 Jul 2020 11:00:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 31B406C9C4;
	Wed,  1 Jul 2020 11:00:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 061B0MEZ031943 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Jul 2020 07:00:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2013D2144B39; Wed,  1 Jul 2020 11:00:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F3DEC200AC2B
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 11:00:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D13551859189
	for <blinux-list@redhat.com>; Wed,  1 Jul 2020 11:00:16 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-297-7mrJUA1qNfChou6ZvvSKtw-1; Wed, 01 Jul 2020 07:00:14 -0400
X-MC-Unique: 7mrJUA1qNfChou6ZvvSKtw-1
Received: by mail-wr1-f54.google.com with SMTP id b6so23306249wrs.11
	for <blinux-list@redhat.com>; Wed, 01 Jul 2020 04:00:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=MwMRReJNISPPEtna8IVjlRhy+rxDKshUkkWd6BH+HBg=;
	b=m7AqXRxKw1tNlYTuo3j+5BZrwsuogQwo1uc2tf3xKXhpMEnWK5r02CIJOhDOlfqvHd
	sUmeY/zLm68g8xo8stqPD4yWksf/umVhOEsfw4mnVSLDUR5FVjduuVY+nwX7fM4exLGp
	2jmX5JubNVsxJlUVOhzLuzC++4xpxFrth4sYDqPpNcTgPOZbkPuCWDzt4YXn2M+VBh4b
	ci1xZwWNcKGqizOFCxif5Xri2RJr7C2nxiqhiBT1j8Zm6YnsxPN2DcaveFicv9kV30ZL
	pq7j/DUlVK7apk8TvdoqlSSJBffpA1IarZVeDqFvlMHKC6364GJAW2JfrNUO/lw53NFz
	tYgw==
X-Gm-Message-State: AOAM533TtcMus9+NSuOU4iOkh133kfiLwAQGz+d9CI0rLykDUpAQNF0b
	DYUZFLPdcWFP5uqsmJVEByNzCGGWq36jvMiFqSdcA/9F
X-Google-Smtp-Source: ABdhPJxQ4m1XrpK2mVKDogJicOHVAdfhOZ1DZ1tBlcikjlZTY6wns/j16YQaNto6LmBfuhCBZqDICG3guNT/YbBT4fs=
X-Received: by 2002:adf:f504:: with SMTP id q4mr25885740wro.163.1593601213108; 
	Wed, 01 Jul 2020 04:00:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:4688:0:0:0:0:0 with HTTP;
	Wed, 1 Jul 2020 04:00:12 -0700 (PDT)
In-Reply-To: <CAPo=n-8eE+AtR2fp8LHn0oJSL19o94n6Tdv7NkAZ3ugNZ7cr6A@mail.gmail.com>
References: <CADj8JxfchRF-=uX6bDxNyO+DE9fxUOygrV4E4GdLzEHoZYOPVg@mail.gmail.com>
	<CAPo=n-8eE+AtR2fp8LHn0oJSL19o94n6Tdv7NkAZ3ugNZ7cr6A@mail.gmail.com>
Date: Wed, 1 Jul 2020 07:00:12 -0400
Message-ID: <CADj8Jxcw1vypzVFk+NCLj3rw3q__n69QZRuJQaZewaYUKhAhKQ@mail.gmail.com>
Subject: Re: using orca wile using jack
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When I start jack2 I don't have any speech.

On 7/1/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Hi,
>
> One option is to use pulseaudio and have pulse output to jack. This only
> works with jack2 with dbus support, and you will need the pulseaudio jack
> plugins (in arch this is in a separate package for instance).
> You then start jack with "jack_control start", after which you should make
> sure jack is selected as output sink for pulse.
>
> Regards,
>
> Rynhardt
>
> On Tue, 30 Jun 2020, 19:24 Linux for blind general discussion, <
> blinux-list@redhat.com> wrote:
>
>> is it possible to use jack wile using orca? How should I configure it?
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>
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

