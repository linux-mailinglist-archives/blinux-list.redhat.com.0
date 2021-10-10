Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 993094282CA
	for <lists+blinux-list@lfdr.de>; Sun, 10 Oct 2021 19:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633888360;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pPwSwoo8DCrAPZxRZERFUFNvNSlsddssSuXnFHuADvI=;
	b=Gjb5qOXhoNRP94Lg1/0Cs0GCajoMkOdreAJuVDRTwissQRpTc2/igriW9dW4MDT9O//FeY
	X3zll57NIh/1Zn3vOV1e74YnjsQ5EleceMdtWzr3LDm1M0vkZojEJ7AKOkWmpn0qED+eVH
	Q+s1K9AN6ZX+cSskJh1XCD75asoYq+g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-448-GO3U3SuDPZ2d7ODYTjOxog-1; Sun, 10 Oct 2021 13:52:38 -0400
X-MC-Unique: GO3U3SuDPZ2d7ODYTjOxog-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD4C918125C0;
	Sun, 10 Oct 2021 17:52:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 20FE15C1C5;
	Sun, 10 Oct 2021 17:52:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 51C1C4E58F;
	Sun, 10 Oct 2021 17:52:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19AHqNUj029597 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 10 Oct 2021 13:52:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 92B292026D48; Sun, 10 Oct 2021 17:52:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8DD7A2026D46
	for <blinux-list@redhat.com>; Sun, 10 Oct 2021 17:52:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 99EF5802A5E
	for <blinux-list@redhat.com>; Sun, 10 Oct 2021 17:52:20 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-299-qQvYVkHNOgS2ZxAXPweKrQ-1; Sun, 10 Oct 2021 13:52:18 -0400
X-MC-Unique: qQvYVkHNOgS2ZxAXPweKrQ-1
Received: by mail-qk1-f172.google.com with SMTP id l7so14643118qkk.0
	for <blinux-list@redhat.com>; Sun, 10 Oct 2021 10:52:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=zu5YLg3eftTm5IXzYtX8g0OwVITcZCVLS0fVTkjmPe8=;
	b=O44uGlQHo64XPjGP1o0XlTZYcET2HakRPRazluXCc982+AAp4tm2tCyQxLP/Hu/oED
	ns+JznJitQidY96W34vV4QmJkA1vBRVpHERQJ/VkQZFXx8qnKBhQKAoMmwUWUQj0ecRh
	+tmH5tSkRQYuIRkFiZxrkOa1rlQdvnD95Hm7ITxvc/HKq7wI8jCDXYB1VyCzLjKfuiJ9
	k08hlmgXzWdz5twM8tlpopUYnUbif1KKb/qMB1nDrEUP1WDv02N42ecvoHYG75eUq66R
	AWE5sqFuxdjWtZxvZ0fLsdIfPWTGfE0uE73OlVOYvbpGbK/HCh1XTrdnYrHpqRDVWh4U
	WD+Q==
X-Gm-Message-State: AOAM532lH6lfKIxmGyQ2loOaIy1j7XaoBDlmsiRGcfaaLVNrsuEGrQL5
	U/FW0ndVJ0EPuo0ewU8TTc/1QmveEWY=
X-Google-Smtp-Source: ABdhPJxN84O3oulXkAf46EMz9NhVeWGN67OWwl6W4CNQ4ug6B+jZxLV/aWM7W0ILOSmwITg0ezmP1A==
X-Received: by 2002:a37:9f55:: with SMTP id i82mr5357279qke.133.1633888338357; 
	Sun, 10 Oct 2021 10:52:18 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	v20sm3283296qtp.44.2021.10.10.10.52.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 10 Oct 2021 10:52:18 -0700 (PDT)
Message-ID: <d43b7b51-c1e2-dac8-9554-9745478538c9@gmail.com>
Date: Sun, 10 Oct 2021 13:52:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: Mate Desktop questions
To: blinux-list@redhat.com
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<d11bed68-9e1c-bb1e-532f-736f45cbf0ce@gmail.com>
	<bf6f76af-bc13-f826-8c91-ff8b6a3dbba6@gmail.com>
	<9a347e53-0f52-4867-f81b-3c62495c6d0f@gmail.com>
In-Reply-To: <9a347e53-0f52-4867-f81b-3c62495c6d0f@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You should have a NetworkManager applet on your panel. This should be to 
the left of the time and date toggle, but in my experience it doesn't 
like to tell you when you're on it. So my best recommendation would be 
to shift tab once you hit the time and date toggle and then press the 
enter key. A menu should pop up with wifi connections, along with a menu 
item called more that will give you more connections if yours is for 
some reason not at the top of the menu.


To be sure that the sound is unmuted, your best option is to run 
something like

alsactl store

in a terminal. This should happen automatically when you shut down the 
laptop, so it's baffling me why your sound is muted every time you boot. 
It's possible that the restore isn't working at boot time either, so you 
may want to stick

alsactl restore

into your boot sequence at some point as well.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

