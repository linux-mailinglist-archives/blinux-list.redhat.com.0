Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id F40EC341048
	for <lists+blinux-list@lfdr.de>; Thu, 18 Mar 2021 23:20:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616106025;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Spe4dA66oU6sryOtmDwPial2Q27/BQAeacVq8S75hIA=;
	b=SxiAqCegOhbGLjmF+cptEia6DthwsBrhwdvcZgfClLT2lNTsxVWpD01byyg+C7yLnCQfJX
	Zy4yd53o3hNKBiGDOgGiv0kBPxJGAGaZTqbSQcG3fQfisvQD65nlOURQ81HcA+NGlmMeAj
	aNntZOi6EFUUjQHDcCbv2HOiW88muds=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-120-AeDUFPnTPfqwsGaE0EqqcA-1; Thu, 18 Mar 2021 18:20:22 -0400
X-MC-Unique: AeDUFPnTPfqwsGaE0EqqcA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01B9B180FCC4;
	Thu, 18 Mar 2021 22:20:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C86C1F041;
	Thu, 18 Mar 2021 22:20:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D1DD84BB7C;
	Thu, 18 Mar 2021 22:20:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12IMK1gv014750 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 18:20:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9E7332166BA2; Thu, 18 Mar 2021 22:20:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 989E42166B44
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 22:19:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A24585A5BA
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 22:19:58 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-561-q_D2snQ4O5eradNOg0XAag-1; Thu, 18 Mar 2021 18:19:56 -0400
X-MC-Unique: q_D2snQ4O5eradNOg0XAag-1
Received: by mail-wr1-f50.google.com with SMTP id b9so7146148wrt.8
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 15:19:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=EdEhEXGhVEwZUakXjTXWcvzLlFVmoKRR2V4wQqwpCGM=;
	b=KZHM+JoAh6TY71UL5ACubqiyQ1N1mHRebXcP/ToBXzO5VkjQWrjjOI2MJp1xykSYJ+
	P5rJJ/FmSHo/ZLqzXoD1VKARHjT1VDV+eGWZucAAyEWuHCVwguho9gpHypE0GafTMsGV
	Cf5ZvVHhjaq1yWCuChy5NM6To33V1tHU62Ezgkx4qAE6ehg9ePSRJCLpF7TpSji5a3X+
	J8ztSAbIdDsyzdvfuNI1kzbgah7aU+QisuYLBF8Rv4p277LlWfc6DgSVHeqwXEWqGYxK
	lYZnZIoqxm7pSA3r6y0OhYmhVoBrmN25V2WaA8Ccj7VLWO7kEeCzESBUbboQmn2rEHDm
	SxRw==
X-Gm-Message-State: AOAM530CABMKn0y5ZryThxSs7RJftXej6E7OkXTNVbvTeIkVstSqkp55
	qlOCukgxnJHmOlhzIc3ZaFyfpjULmHs=
X-Google-Smtp-Source: ABdhPJxu3ATGN6pkG4XinUSct7S+no89lDQNdWgIZcBGBmp0XSNg1LuqN6BTTsFTSUSb7IalqJuvTg==
X-Received: by 2002:a5d:52c2:: with SMTP id r2mr1464187wrv.40.1616105995140;
	Thu, 18 Mar 2021 15:19:55 -0700 (PDT)
Received: from [192.168.1.130] ([87.74.160.207])
	by smtp.gmail.com with ESMTPSA id x8sm4429198wru.46.2021.03.18.15.19.50
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Mar 2021 15:19:50 -0700 (PDT)
Subject: Re: Decluttering Thunderbird/other alternatives?
To: blinux-list@redhat.com,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <bfe62c6d-2e03-2175-0a5d-21a398151040@gmail.com>
	<20210318102909.14ecb105@bigbox.attlocal.net>
Message-ID: <61712cee-f247-46c1-1efa-eddc5184587a@gmail.com>
Date: Thu, 18 Mar 2021 22:19:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210318102909.14ecb105@bigbox.attlocal.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

I mostly use Thunderbird for checking/responding to emails on two 
accounts really. The way I understood it was Lightning had been moved 
from an addon to an integral bit of Thunderbird.


Far as desktops go, I use Mate on my system so I'm not sure how that'd 
affect things really, but I'm always interested in trying out other 
clients. I've used Alpine/mutt/neomutt before but I prefer the 
simplicity of a GUI client personally, unless there's a very, very 
simple CLI client that has the features I need, I can set up immediately 
and get running on my Ubuntu Mate system?

On 18/03/2021 15:29, Linux for blind general discussion wrote:
> Tim here.
>
> I know that it's possible to hide the icon-bar(s) at the top and to
> reconfigure them to remove unused portions.  Though I'm not sure how
> accessible the "modify toolbars" interface is.  However, I'm not sure
> about the tabbing-twice-to-get-to-the-subject-field aspect.
>
> As for alternative programs, I guess it would depend on what features
> of Thunderbird that you use.  Do you use multiple accounts or just
> one email account?  Do you use any other plug-ins for things like
> encrypted/signed email, RSS, or calendaring (I think that's what
> Lightning is, but I'm a tad confused there, since I had understood it
> had been moved to an add-on, so you should be able to use the add-on
> manager to remove it if you don't want Lightning to appear in your
> interface).
>
> Of similar functionality to Thunderbird:
>
> If you use a Gnome-based desktop, then Evolution might fit your
> requirements.
>
> If you use a KDE-based desktop, KMail might suffice.
>
> Both of those are fairly tightly tied to their desktop environment,
> so the accessiblity should be comparable.
>
> I primarily use Claws mail, though I'm not sure how well it
> plays with other accessiblity tech like Orca.
>
> >From the other end, there are a number of CLI mail clients that would
> be roughly as accessible as your terminal.  I know that both
> mutt/neomutt and alpine have some configuration options to make it
> more screen-reader/Braille friendly; there's aerc and sup/alot too,
> though I have less experience with them.  If you use a single mail
> account with something like fetchmail and sendmail, the classic
> "mail" program works pretty well.
>
> With a better idea of how you use mail (and how comfortable you are
> at a command-line), it might help us give better ideas/suggestions.
>
> -Tim
>
> On March 18, 2021, Linux for blind general discussion wrote:
>> So is there a way I can declutter Thunderbird to be simpler/easier
>> to navigate? I don't /need/ Lightningtaking up space, or having to
>> tab twice in writing a message to get to the subject field.
>>
>> So can I do anything to declutter Thunderbird. Or are there any
>> alternative email programs that are just as good as Thunderbird
>> that work great with Orca?
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

