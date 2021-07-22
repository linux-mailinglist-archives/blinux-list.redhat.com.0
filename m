Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 539033D24F8
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 15:58:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626962322;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ga+MTvkk2gOponKDx9gclM9Pz0KxpluoKRPzy8B0ro8=;
	b=Qw8RUq8BaBPdtiSDfkunJalj7K1b7wzpHBP29cQeSo0H4hDohxf+sK6D7lVdFl2XWOsBN/
	/LRolLCZm1afv/9N4c1dTP3iWaODI1enCJUnSGepf7x2OjnXPLYJ8j8HpnTDqNBjhThTCt
	PKjtz0ag5Xv/aCnERKM0nhZlIFchaZw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398-EgBhjz-WOmSo_WD7SPtuEg-1; Thu, 22 Jul 2021 09:58:40 -0400
X-MC-Unique: EgBhjz-WOmSo_WD7SPtuEg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46904804143;
	Thu, 22 Jul 2021 13:58:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F86869CB6;
	Thu, 22 Jul 2021 13:58:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0073F4BB7C;
	Thu, 22 Jul 2021 13:58:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MDwYcw010845 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 09:58:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E28CE106269; Thu, 22 Jul 2021 13:58:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DCC33106A2F
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 13:58:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4FA9F1078461
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 13:58:31 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
	[209.85.219.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-319-ts2qU0pIPm-ZXSE1FW_ghQ-1; Thu, 22 Jul 2021 09:58:29 -0400
X-MC-Unique: ts2qU0pIPm-ZXSE1FW_ghQ-1
Received: by mail-qv1-f51.google.com with SMTP id a10so2604325qvj.11
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 06:58:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6BwZs1H4HWv0bkEgBaCygpm5wMM/WTmXTJMA1zFyTvo=;
	b=kwpBN98bffV+arDnQ50sROmY+b5aTW4jOdITiwbBtc/LFNw3G7TS6eweRSWet8oZhu
	MIlZcK3Ljd6USFXteD8fzK4ZlRj1vODyo9rFfINZMdTtsn1mTjacJfZKdpFMmjbJNJbr
	nR2YWt6/teVBb9FVaXWF4xkJJGacjpovpjXvw37wKZEUOVXo1cZkcs4FSoapprBh1Nwj
	6r7v/aee/0RJC6WLUtBSIL7ang3BT656AnEu4tdKLr4iKdf86WqoIsZ/Mq/7oXtH/qD+
	Dt5/0HjGU7HnXqDOx+lOpE2mWwHZliO/W7kWSBMypEB5Izmy6b859Ebza28oUP+K6JqG
	9a3g==
X-Gm-Message-State: AOAM530M3HstirBdlbWnGUcgFbElEoVp/XmYW+9CnUbKJTxDks6vUIwb
	bw3YXGksACP+s1s5iFoUpBsSzuvfUPU=
X-Google-Smtp-Source: ABdhPJzLOHzTHjuEJXJdfvEjRcg0xAm4tZ9gwCtq/GtWYhVq7zLrGy5nlf0fiu1Q+S4vjAGu4OFTMg==
X-Received: by 2002:ad4:4ae5:: with SMTP id cp5mr56265qvb.38.1626962308552;
	Thu, 22 Jul 2021 06:58:28 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	75sm12847218qkl.31.2021.07.22.06.58.28 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 06:58:28 -0700 (PDT)
Subject: Re: Adjusting lightdm screenreader volume (How do I...)
To: blinux-list@redhat.com
References: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
Message-ID: <210fc29d-9144-c009-3557-fd2304aa47cd@gmail.com>
Date: Thu, 22 Jul 2021 09:58:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I know of two things you can do to set the speech volume in lightdm. The 
easiest option is to open Orca preferences and set the volume under the 
voice tab. However, this will only set the speech volume. Since this is 
all you really need here, it shouldn't cause a problem. It also has the 
benefit of setting the volume immediately right on the lightdm screen, 
so you won't have to reboot or log out of your session to wait for the 
change to be effective.


The other method is a bit more complicated, but it will set your system 
and application volumes, as well as your default device if you have more 
than one and want to use something else. First, login as your normal 
user and set your volumes the way you want them. Then as root, copy your 
user's .config/pulse to /var/lib/lightdm/.config like so, noting that 
the # at the beginning of this line represents a root shell and should 
not be copied:

# cp -R /home/<username>/.config/pulse /var/lib/lightdm/.config/

replacing <username> with the name of your normal unprivileged user. 
Now, also as root, run

# chown -R lightdm:lightdm /var/lib/lightdm/.config/pulse

This will set the ownership of that configuration folder to lightdm so 
that it will be able to read it. On the next reboot, lightdm should 
speak at a more acceptable volume. Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

