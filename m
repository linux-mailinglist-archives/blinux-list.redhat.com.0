Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9B22D2F55C2
	for <lists+blinux-list@lfdr.de>; Thu, 14 Jan 2021 02:19:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610587140;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jywUHTMHb9Oa+Z9y1X8hsw4HDyYy8Plub8oaIFM1Ywg=;
	b=QHU+4GxvFflAW1+sruXz++KyY6f0qSf6/euyNJXtZgTrtdyZ85y/1cuhC250fZBZ4ZrtP1
	tDfmt3hTV/Nt4UE0QlJrFdkJqdJYVB7205b5+6LCGo0NnjuvxvrsMJaOuDsxfePugb0Eo2
	DhTm4+0UZxe1jSancPVCshR2m8ys3Co=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-Eu7xpX-wOmSk63FrmFD0Bg-1; Wed, 13 Jan 2021 20:18:54 -0500
X-MC-Unique: Eu7xpX-wOmSk63FrmFD0Bg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12F731005D50;
	Thu, 14 Jan 2021 01:18:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 83A8160BF1;
	Thu, 14 Jan 2021 01:18:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B349180954D;
	Thu, 14 Jan 2021 01:18:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10E1IduH014771 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 20:18:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C944C10F8E22; Thu, 14 Jan 2021 01:18:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C4F8910F8E1F
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 01:18:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 55F38800140
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 01:18:37 +0000 (UTC)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
	[209.85.222.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-219-B5m-y38qOdihGeGBqIHTbw-1; Wed, 13 Jan 2021 20:18:35 -0500
X-MC-Unique: B5m-y38qOdihGeGBqIHTbw-1
Received: by mail-ua1-f41.google.com with SMTP id y21so1312022uag.2
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 17:18:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=P5PBNe9gJBkbx/w8MSLKacMSWIa9p52xRa6Ihxfo/+c=;
	b=aURpdyuBcHRHyDJUY+N5OLGXgvaiO03p2NVFREri+lMYMp0BP0EmQ6ohSDMeNmEYsA
	T1dUXfzGHSQiAcZoAgKwod3S+eTEMpx7BDqBpMW6UMVJbR+bHrlT089cikBknlCKzsvC
	0eyT62SuQDessfGABVZR88n3Lz3onCPsU8AbhxFEDAi1e3cc1pbuzjCgf1rO4zrET0Py
	k2e6X5wRnEsSWMWBXWPVF9Elh6IHn4tPLZOkfLgynub7vLHdjI3EpGozsXUu9Mjohpta
	sBXxAPCnA2g2+LpK6xbsWXOjAzn1A+6+wN18gLo61jyNk13Ufk3+Ztp9dBamYmJv6QBq
	neeg==
X-Gm-Message-State: AOAM5302ln0Gs0dn8eVkXdtdbYK8aAi/90yASWiyeC+qPLbKeczQvIEe
	IjxVxl5+ilQWap6sM+EnZnLZi70mbvmi9jD+x2tCdcPhqb0=
X-Google-Smtp-Source: ABdhPJzU2sd2xFa2rAvA8LdIDM+NCM+SOCqhNc0lyU/aPucTyRhWqvtvXuLBHLBK4RlryAyZjRsgAVLtLxbOXPMNQ38=
X-Received: by 2002:ab0:2a1a:: with SMTP id o26mr4391094uar.101.1610587114393; 
	Wed, 13 Jan 2021 17:18:34 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:645:0:0:0:0:0 with HTTP;
	Wed, 13 Jan 2021 17:18:33 -0800 (PST)
In-Reply-To: <161058501163.6.3631318214282253314.3039996@slmail.me>
References: <161058501163.6.3631318214282253314.3039996@slmail.me>
Date: Thu, 14 Jan 2021 01:18:33 +0000
Message-ID: <CAO2sX30taDZzLWFMKMZY-pzWhWqVKTm_ZbBku77tO5CAxKhJQg@mail.gmail.com>
Subject: Re: How to activate a "clickable" icon?
To: blinux-list@redhat.com
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

A few things that might be helpful to know here:

a is the navigational hot key to jump between clickables and is
arguably the only one that isn't self-explanatory in English.

shift+a jumps between clickables going backwards.

alt+shift+a will bring up the list of clickables on the current page.
Tabbing when you have the list open will cycle between the list
itself, cancel, jump to, and activate. Pressing enter on cancel will
close the list and put you where you where when you pressed
alt+shift+a, jump to will close the list and take you to the selected
clickable. Activate will simulate a left mouse click on the clickable.

Orca+9 will move the mouse cursor to where Orca's reading cursor is.
Orca+8 will simulate a right mouse click. This is usually redundant
since the context menu key usually does the same thing.
Orca+7 will simulate a left mouse click. This is useful when you need
to click something that appears to be plain text. Can have unexpected
results if you don't use Orca+9 first.

Note: the above keystrokes work with the number row. I don't have a
numpad, so I don't know if they work with the numpad as well. Orca
refers to the Orca Key, which is usually set to insert(for desktop
mode) or Caps lock(for Laptop mode)

Orca+A will toggle between browse and focus mode... not sure if
jumping to a clickable and switching to focus mode will make enter
and/or space work on the clickable if it lacks explicit keyboard
functions, but it's useful for entering/exiting things like text boxes
and comboboxes while staying in the same place, so you might find it
useful even if it doesn't help with clickables.

I usually use the alt+shift+A method when I need to activate a
clickable, usually after using a or shift+a to get to the right part
of the page if there are multiple clickables on the page(bringing up a
list of elements, clickables or otherwise, tends to make the
highlighted list item the one closest to your current position).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

