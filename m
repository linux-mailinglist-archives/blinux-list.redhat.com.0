Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 739E7462843
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 00:31:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638228675;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kXaECfSuFbBhirSeMI5yqNEIrg+ZFdqy/Xxkm/hDeiU=;
	b=cP5H3bSNHBiOTs8ayarOXMYy9ZSoSlVDMqFOnw9GESgPV2DlibkrX38hnfCZekPNRrmgk9
	OcEaxqgWf3urJTsZq3Gp+EpF9KAxmZcTL7KAjQvKpMwmN444aUDIzHJr038ydwiF7fyYXo
	VdQpquD6oyJZfsdemyTaWgepzjuiyHA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-557-AgSGn35_PsGNwXnRUrh3YA-1; Mon, 29 Nov 2021 18:31:12 -0500
X-MC-Unique: AgSGn35_PsGNwXnRUrh3YA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E7CC1006AA0;
	Mon, 29 Nov 2021 23:31:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DAE1719724;
	Mon, 29 Nov 2021 23:31:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D80EE4BB7B;
	Mon, 29 Nov 2021 23:30:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATNUoAw017771 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 18:30:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6B710112131B; Mon, 29 Nov 2021 23:30:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 673371121315
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 23:30:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9AE12185A7BA
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 23:30:44 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-193-8GvrtM5aMBG9n-uTZUDjkA-1; Mon, 29 Nov 2021 18:30:42 -0500
X-MC-Unique: 8GvrtM5aMBG9n-uTZUDjkA-1
Received: by mail-qt1-f172.google.com with SMTP id o17so18398467qtk.1
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:30:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=t6HmBwysihk/GO8B8u0l87cj5ZBgxllWkVsyZDQ9tLg=;
	b=Tm6c0k8TMLEhWFpQWwDZz+pX9cnF9gyGtKPXTfLzymZWtPz8f317CjaGyjn5sEO9NT
	HW52/qIa8lrdENIQIWcEK8NTT5iVGDmVGcU18J4leBWnSS3TCwNeZRRRZkqY2RBFlwtG
	cu87L78rcQVJ2fTJKWAbHR4VECY49UxbvmBPjIA4a8UHg5ncwhvxSoT1WMXk5870/f6i
	NDOrMCVE0QaN8cC69Ai5R3R0+JRxU3o4r/gg3qF+ELYx3W+Oe1PUcTolOrqjRW6D3Ghj
	u+v+EGgfc0XicFX4rHUV8BzpYicH1QJup28B9nPfareFAGXZRf980DiAEAcaz2UVvoHc
	ZkGQ==
X-Gm-Message-State: AOAM5321KNd0nVdjuhJMl+CNpX1BD0aA9WuLdZiK9H+z2imlPvfLnu+X
	QH9JexAGCedxBDkZMJQp5gdVVwXb2QY/logm
X-Google-Smtp-Source: ABdhPJxBVIUU+U/DXi30LJ7DwEtszog31M51JuvFJdEaArFauHMlbhDVc/rH48MhaP1XeZWTgoN75w==
X-Received: by 2002:a05:622a:13cd:: with SMTP id
	p13mr47423132qtk.27.1638228641829; 
	Mon, 29 Nov 2021 15:30:41 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id
	s11sm9298691qki.95.2021.11.29.15.30.41 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 15:30:41 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
Message-ID: <878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
Date: Mon, 29 Nov 2021 18:30:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks a bundle for all of you folks. I did not know how much of a 
discussion my innocent and naive question would generate. I learned a 
lot from your answers. Although I have never messed with configuration 
files since the days of the autoexec.bat in the days of dos, I think I 
have enough courage to play with changing some configuration settings 
using some of the editors you suggested.

I launched few of them both in the desktop and in the terminal and I 
found geany and nano to be easy. I did not find Micro, I guess it is not 
preinstalled on slint.

I know that my editing needs would be very basic.

Cheers,

Ibrahim

On 11/29/21 5:33 PM, Linux for blind general discussion wrote:
> There is teachjove and jove is jonathan's own version of emacs and
> teachjove can be run without running jove or emacs directly.  This can be
> done from the terminal for any willing to learn.  I suppose emacs could be
> configured in the same way but haven't tried that yet.  It probably would
> need a small script.
>
>
> On Mon, 29 Nov 2021, Linux for blind general discussion wrote:
>
>> I actually have a computer science degree and still find both emacs
>> and vi to be riddles, wrapped in mysteries, inside enigmas and I
>> should probably figure out a way to add puzzle, conundrum, and a few
>> other synonyms to that Matryoshka doll of an idiom.
>>
>> I don't doubt the claims they are powerful bits of kit once mastered,
>> but they certainly for the faint of heart and not a good choice if you
>> just want to edit the occasional config file.
>>
>> I personally use Nano, and it lets you just enter nano to open a blank
>> file you can just start typing in or nano path/to/filename.ext to open
>> an existing file, but it does have some commands that might throw
>> people coming from a grapphical editor or word processor for a
>> loop(e.g. save is ctrl+o, not ctrl+s, quit is ctrl+x, not ctrl+q) and
>> has cut and paste that is line based instead of selection based(e.g.
>> ctrl+k cuts the current line in its entirety, repeating ctrl+k without
>> otheer input continues adding lines to the cut buffer, ctrl+u uncuts
>> evereything in the cut buffer, copying is accomplished by uncutting
>> where youo cut, then uncutting again where you want the copy). Also,
>> pressing ctrl+g will bring up nano's full command list, while the most
>> commond commandsare printed on the bottom two lines of the screen.
>>
>> For simpler console text editors, there's also Micro, which is similar
>> to Pico/nano, but has key bindings more in line with the majority of
>> graphical editors.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

