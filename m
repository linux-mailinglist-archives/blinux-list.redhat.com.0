Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id C67B89C714
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 03:51:50 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3143D83F45;
	Mon, 26 Aug 2019 01:51:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 52C3919C70;
	Mon, 26 Aug 2019 01:51:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 59AD2C592;
	Mon, 26 Aug 2019 01:51:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q1pg38015968 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 21:51:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 743B419D7A; Mon, 26 Aug 2019 01:51:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx28.extmail.prod.ext.phx2.redhat.com
	[10.5.110.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E7CA19C70
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 01:51:40 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 85EC8881344
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 01:51:39 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id b25so10985115oib.4
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 18:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=0/cKEY3zludVUeJ6kFNgGpFj60+m0izGiF7RAndbfT4=;
	b=s4UtbZAXint4pbe4yM3ONekJcQ/iCF7YgHAJujqQtYhqdWY6Kyk4WT4tTel7IbWPlS
	xw085CKmKspebz7gJEhW9I1AFpaLIitG8lsAIuAyOLjEEm++bORw8aDKjkE9SZXOGPk/
	vFRqcQ+Z1VqJNP3ethS6KbDwhhyKrr+RQgu5Jab0mkGXor9uzIEq9mEAy7/CcLUY3cA2
	QO8ttL6Hm6CaVz+l7qVkXE2ptBY0LpE58bC67Htc9aHeT8pfuNPM7FxZaVyHgbj+lmeV
	lLcyxoP+Qdq9cIEJoz4cvWWiGXe5qYPYHKGFaa+pKtxpCy1f5epk4tAqyHAqJ/PiA16q
	5SUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=0/cKEY3zludVUeJ6kFNgGpFj60+m0izGiF7RAndbfT4=;
	b=fbUQfd2bwqVZoRhnBeIPvDJhSgmbQ5lvGi8wojhQGpVbD5V8ac+y1hsClhGktgNJaK
	Jf/skTGy1nC6WR2helguyor5hkTp6USwp/j7cGflsodPbxjPvP6tcSIXZmZhzeaFA3+B
	I578VGhs2U4Vpe0aimueq+wv3sDXTHDvlX/9TugILj6eo748oP9zTVi/bQ9c9rTlcQ0F
	Tz9s243G04Rm6w64ofVeg9WACl82wHDruXAf+hhq6NM3bMYf5tgeLWwzHuMjDtwbK4em
	2Vsyqftcx0+Z2svQ/Cd5PuzBAnsfmv2YPllRz8qsWF3wYouCCoowV3XOph6mUokGD5qB
	9vPA==
X-Gm-Message-State: APjAAAXc4HsWCI0EDw/s0vxwrbf91S6wVtqnq4tBXn8vBJqLCO7dFVrf
	Y7JHVh3KhRUNtmrzVv6V+S27XMe/KVs9p4yDlWFavw==
X-Google-Smtp-Source: APXvYqwMj9J7THz3hSyd9AAH6Nyx8q83rZeFjoNHNsspyV4b5ivXvl9WNb8FSYVsS10k+oo9NT6CA3ZvCV/EiZA3YCo=
X-Received: by 2002:aca:5b04:: with SMTP id p4mr10810980oib.161.1566784298852; 
	Sun, 25 Aug 2019 18:51:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Sun, 25 Aug 2019 18:51:38 -0700 (PDT)
In-Reply-To: <Pine.LNX.4.64.1908252016050.12148@server2.shellworld.net>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
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
Date: Mon, 26 Aug 2019 01:51:38 +0000
Message-ID: <CAO2sX30e6CZUrkvoamGbri5gDitrtnGvLh4J0QMbxYo2zutJrw@mail.gmail.com>
Subject: Re: amazon?
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.69]);
	Mon, 26 Aug 2019 01:51:39 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]);
	Mon, 26 Aug 2019 01:51:39 +0000 (UTC) for IP:'209.85.167.176'
	DOMAIN:'mail-oi1-f176.google.com'
	HELO:'mail-oi1-f176.google.com' FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.167.176 mail-oi1-f176.google.com 209.85.167.176
	mail-oi1-f176.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.69
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Mon, 26 Aug 2019 01:51:49 +0000 (UTC)

I'm not sure what distinction is being made when one says elinks is
not a text based browser, but I shared my experience because it's a
reasonable prediction that if someone else using the same combination
of web browser and screen reader as me performed similar actions,
they'd get similar results. Can't speak for any other combination of
web browser and screen reader, though I'd be surprise if Firefox+Orca
was the only working combination.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
