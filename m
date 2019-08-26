Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE7F9C961
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 08:23:55 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 213B518C890C;
	Mon, 26 Aug 2019 06:23:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B20219C70;
	Mon, 26 Aug 2019 06:23:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 74E3789CF;
	Mon, 26 Aug 2019 06:23:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q6Ne15022703 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Aug 2019 02:23:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 65234100197A; Mon, 26 Aug 2019 06:23:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx11.extmail.prod.ext.phx2.redhat.com
	[10.5.110.40])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FDBD100195F
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 06:23:38 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
	[209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A0E163084295
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 06:23:37 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id a127so11299170oii.2
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 23:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=4zdKddcb9Hk/P2whArtoTENSoSYCsKaLSIEjr+//x5g=;
	b=H0xsyHtiOSV+tTm/4+awemoTaahiAwvus4+DObe+fwMeqPrOGRFtHuXpYflmADCkf2
	6Dw5VH35eEKMxF2bu1HoLGeqrMhkOWRGBnXpsdkbX/udWgp1pURYdvQpX8WXoIn4fAeZ
	Iup2SEtsBwrg4JEKVitSHMgE2pz/BF2Bi6so1T58YmEFV6m3sEzLZUM1SCkRY8qNDDtX
	KnF2/2DCRd2fOIwh9a4v2MlcXmNup0zuYESYRh/HdkUjVSzmfHw1efFm0POmRUHsPN2r
	LbCkz8FroZCY/9rPIROJn1YJertrwLYVLd9Mi6ZCYO/Crzz4uWWXkdwsRbEJRZlDuJbp
	HE8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=4zdKddcb9Hk/P2whArtoTENSoSYCsKaLSIEjr+//x5g=;
	b=ogCryhlWnjb6AQ/3O96xg3HYuXUwZNDXv1BzNf1C7l7qdIr5a9C5HYHaDxx5eB0qtt
	rzPnbJQAjnz3HdSijzaykkjDSfRgzxjLwihge000QopeWjBLY99hE0FbK+XbUlpXPCnU
	falyRAdF8XMvMchm911lLeBlrDLgsqFNKEEg2pd4QdDkcRZIIHdFU49wQfIngwcbVKNE
	6dZ0MABuELZUt/7CRVmgartvo5ZSWbEJUKISR55YIjouUD6nOlKhen+2V8KyLMnIbZDW
	bDBlte8hJ5XyenVtCwgbbfDGGzgjjs0dyTLGaivWcnQgVI9GQFN2eDtd9C/GVn5FtWuU
	Il6w==
X-Gm-Message-State: APjAAAUpl4o9hfOYxy5cekfPRSMJ1s32ix0K+dTon9R1gdZqq3ULsYXw
	1cWX1DktXw1dMiKqL4JpNGJvmVTMatot6+oHDuOljw==
X-Google-Smtp-Source: APXvYqwrR89DbIQv6mb45RGvH5M0xZqfLKHfA00q6I0cKrTbux/ekm+sg6Y9J6PJ/GKJhKu+mvb+2MEWzrST+FdmvrQ=
X-Received: by 2002:aca:c58d:: with SMTP id v135mr10879966oif.42.1566800616911;
	Sun, 25 Aug 2019 23:23:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Sun, 25 Aug 2019 23:23:36 -0700 (PDT)
In-Reply-To: <Pine.LNX.4.64.1908260053130.16691@server2.shellworld.net>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
	<7f8743f3-bddf-6807-b2bf-0e7443c9c322@gmail.com>
	<Pine.LNX.4.64.1908250041020.12504@server2.shellworld.net>
	<6acc536b-99c9-21f7-1d40-be4d10abab70@GMAIL.COM>
	<Pine.LNX.4.64.1908251207060.2365@server2.shellworld.net>
	<a1ef7648-72f7-8fc7-e5b5-142187a91cc0@GMAIL.COM>
	<74ebe647-3c78-b87d-c7a3-aa65d2d688d1@gmail.com>
	<20190825.212134.847.19@192.168.1.131>
	<64b22aae-23e5-d645-eeb9-6c7646972090@gmail.com>
	<20190825.213109.635.20@192.168.1.131>
	<Pine.LNX.4.64.1908251933090.10144@server2.shellworld.net>
	<CAO2sX302GFCv+K1uzUE6NqFiaJb96ppT1=J2woNoWOqi9bdjQg@mail.gmail.com>
	<Pine.LNX.4.64.1908252016050.12148@server2.shellworld.net>
	<CAO2sX30e6CZUrkvoamGbri5gDitrtnGvLh4J0QMbxYo2zutJrw@mail.gmail.com>
	<Pine.LNX.4.64.1908252207170.13997@server2.shellworld.net>
	<CAO2sX33WwZ55ekxV=a1aggdbRDNTDYxGx-z=dWhw=1743yX1jg@mail.gmail.com>
	<Pine.LNX.4.64.1908260053130.16691@server2.shellworld.net>
Date: Mon, 26 Aug 2019 06:23:36 +0000
Message-ID: <CAO2sX3352S6RrOXjDEqZBC6X=_c6zzcSN_61QKcAaG_wRX3r_A@mail.gmail.com>
Subject: Re: amazon?
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.40]);
	Mon, 26 Aug 2019 06:23:37 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]);
	Mon, 26 Aug 2019 06:23:37 +0000 (UTC) for IP:'209.85.167.174'
	DOMAIN:'mail-oi1-f174.google.com'
	HELO:'mail-oi1-f174.google.com' FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.167.174 mail-oi1-f174.google.com 209.85.167.174
	mail-oi1-f174.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.40
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.70]); Mon, 26 Aug 2019 06:23:54 +0000 (UTC)

If I have, at any time, implied that everyone should use a specific
tool or set of tools, I apologize as such was never my intention. I
merely shared some details of my own experience in the hopes someone
might find it useful and feel like I've recieved undue hostility in
return, and perhaps some of my own words have been harsher than
intended as a result.

I am well aware that blindness is far from the only challenge in the
realm of accessibility, but as I myself am functionally blind but
other wise able bodied and have had minimal contact with individuals
with other disabilities, my own experience has little applicability
outside of blind accessibility.

Many accessibility issues would vanish if WCAG achieved universal
adoption, and perhaps there is value in legal mandates to help the
process along, but I doubt the day that goal is reached will be any
time soon, assuming it can be done at all. In the meantime, the best
most of us can realistically do is  give our opinions on which tools
are most accessible, provide feedback where accepted to the people who
create and maintain the tools and build websites and hope said
feedback leads to improvement, and share workarounds we've come up
with when we hear of someone having a similar problem.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
