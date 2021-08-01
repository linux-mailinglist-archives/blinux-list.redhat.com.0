Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 550003DCAEC
	for <lists+blinux-list@lfdr.de>; Sun,  1 Aug 2021 11:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627810756;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cE+TYFt6esbUBhcVDw7jJkVzoheXuJZWuRiuvCmxvYM=;
	b=SCO224cWQeXU8F+GMvCjRVGStjrkcB0U/T908bDZ38sfJQz3VuIB2JdbSiAGLBjTANlj8/
	yGNHWGnuWphMvhYQjCCFp62IUpo0XCQkSr6MXJP5syqYOWjCAZO4fY9SRjPCYTxz/lgQqs
	YOrLKXLmRFtTlPryho5JfS5ihoQmTlk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-593-h6dS08-OONWuGHxS8FkaPw-1; Sun, 01 Aug 2021 05:39:15 -0400
X-MC-Unique: h6dS08-OONWuGHxS8FkaPw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F8311853027;
	Sun,  1 Aug 2021 09:39:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5ED8B1036D11;
	Sun,  1 Aug 2021 09:39:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E1E6C180B7A2;
	Sun,  1 Aug 2021 09:39:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1719d3Q7021572 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Aug 2021 05:39:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A5AD263F9E; Sun,  1 Aug 2021 09:39:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A04D663F9A
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 09:39:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 36CE1101A529
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 09:39:00 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-465-k4DBqLCbM9uVD7Bfduas7Q-1; Sun, 01 Aug 2021 05:38:58 -0400
X-MC-Unique: k4DBqLCbM9uVD7Bfduas7Q-1
Received: by mail-wr1-f54.google.com with SMTP id z4so17737778wrv.11
	for <blinux-list@redhat.com>; Sun, 01 Aug 2021 02:38:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=Nea6ify5hiWDEiwad9AWPQTOPImv8KoZ9tIS6HkNhZM=;
	b=C6NkcBpflhnknoz7J9ZSQNATvKK0dJQTL+lFBYjMmC3qLuNrFwD7f/YZSrhhP9nrG1
	oISRSHVZYWnxFfren6ZROZvQNbEgctYbEuSoLjoWxAgarJ6LrTrRCXSioySICa/5Aro9
	EIWbdetvWFxLZ0Q9Ge7EEzAENXycNFHVWHoqfbtNKkpaqx1o+n+yoLBLzUDa6Xx28iYp
	aLFLweyQeMGqSy2GYEHt4Oge5YKixdE4W87BP0MgXf3jBNqSHLyQPbhSO41AshZK4tdT
	ag83/uWZBOW/YxftQwg4kFwlU9fJXBC0EhysvZg+Cgi0soedROKBZtEGs9TBBiSeQnNY
	hxtQ==
X-Gm-Message-State: AOAM533J8kUU1Nitrr1M4QnV/oJrGp1oShivEokCKG3LpJKiflT4jkCA
	9ZM/IB3Y6uSSSvsINKYJoHv/kN1a4aHaCQ==
X-Google-Smtp-Source: ABdhPJwAsEwnlQyeHLU79VuEsGXeBzENKFRr9P3ZdpPQ1B42tfg8IH6TeTdeA1gSntXahr7fgt0Vmw==
X-Received: by 2002:adf:cd92:: with SMTP id q18mr12075151wrj.18.1627810736575; 
	Sun, 01 Aug 2021 02:38:56 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id
	v17sm3992813wrt.87.2021.08.01.02.38.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 01 Aug 2021 02:38:56 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>,
	Linux for blind general discussion <blinux-list@redhat.com>
Subject: Solus DE observations
Message-ID: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
Date: Sun, 1 Aug 2021 10:38:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Since Solus came up again, I'll share my observations of the three DEs 
I've used. I'm leaving Plasma out since it doesn't work too well for me, 
but yMMV on that


Budgie:
It's, boiling it down. Gnome with a fancy coat of paint and is the Solus 
flagship one. It works well enough given it's Gnome 40 based and is very 
much useable. Now if I could assign keyboard shortcuts, that'd be handy. 
Maybe I can and haven't found it yet, I dunno. One note I do have is 
that LightDM is the login manager and is insanely /loud/ on startup once 
you enable Orca with the usual shortcut. So just have a long, long 
keyboard cable, and Budgie/Gnome have a nice startup sound when you log 
in, which is always a nice touch. The Solus team have put a lot of care 
into the DE from what I've found.

Gnome:

It's Gnome. It's Gnome 40. Need I say more? One note is I couldn't get 
speech at a login manager on my system. It does have a nice startup 
sound to a la Budgie.


Mate:

Oh this is going to be disappointing. There's a few issues with Mate as 
far as Solus goes.


1. The Orca shortcut isn't set. Which isn't a big deal since alt+f2 and 
orca sorts that then when you get the system installed it's two seconds 
work to set the shortcut and set Orca to autostart.


2. THe much, much, MUCH bigger issue is the desktop loses focus and 
requires a GTK dialog to be loaded. Quit Chromium? Yeah Orca+H, F2, and 
then keep going. Now. If there's a compyz setting I've overlooked to fix 
this...then sure, I'll give it another shot. Don't get me wrong. Mate is 
fantastic when it works. It's just....when it breaks on Solus and needs 
workarounds, it's kind of a bugbear for me, as well as the bottom panel 
being unlabeled, but you can get around most of that As with Budgie it 
uses LightDM so you get Orca working on the login screen, again, 
stupidly loud. If the focus loss issue can be fixed, then I'm liable to 
switch back to Mate full time instead of Budgie.

And, there's no startup sound either which, really, disappointing given 
the other two have one and I don't know bout Plasma, but it feels to me 
like the Mate one isn't fully finished up vs the other DE.


And related note, I'm hunting down an nmtui which doesn't seem to be 
shipped with Solus. I may just request it or ask on their forums if 
one's in and I'm using the wrong name.


Related note #2:

Somehow it's more stable for me than Ubuntu, which I didn't think possible.


For installed things?

Mate didn't come with a mail client and came with Firefox which I've 
replaced with Brave, and installed Thunderbird. Each distro ships with 
Orca 40.0, but I've not tried building Orca from git yet, I'm wary of 
installing the build deps on an already working system

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

