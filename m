Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D337501ADB
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 20:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649959913;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EyP5iTvSjksS7Cmg116Q0oRFqet/Bm9tDjc3+ktiDQo=;
	b=SqN09iXRUaMiMb1syHtIkYEtVsE5jh92oxsaN/1cXoCQHj6XCGHgNVApD3Rk7r6YQ6eNYd
	OjLYNcVYU8dCSNmLjrMCOQl83lEZVB47uyrXqvN0u+XBdaCt+0sbNLKCxJE1KA3wlrRcvU
	DNZgsKPFD8yhQ8RdJ6xGfRG/wJ7Vog8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-78-dQ7YOO9GNi2L1sH8woY87w-1; Thu, 14 Apr 2022 14:11:50 -0400
X-MC-Unique: dQ7YOO9GNi2L1sH8woY87w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 33DAD2A2AD4A;
	Thu, 14 Apr 2022 18:11:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BA253404E4A7;
	Thu, 14 Apr 2022 18:11:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F17C5194034B;
	Thu, 14 Apr 2022 18:11:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 19:11:38 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
References: <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8209.1649858812.111208.blinux-list@redhat.com>
 <mailman.8162.1649859377.111209.blinux-list@redhat.com>
 <mailman.8191.1649860611.111209.blinux-list@redhat.com>
 <mailman.8286.1649861527.111202.blinux-list@redhat.com>
 <mailman.8346.1649867449.111204.blinux-list@redhat.com>
 <mailman.8350.1649881422.111208.blinux-list@redhat.com>
 <mailman.8344.1649892897.111209.blinux-list@redhat.com>
 <mailman.8516.1649959296.111209.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8516.1649959296.111209.blinux-list@redhat.com>
Message-ID: <mailman.8738.1649959904.111210.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Al, to be fair I'm not sure when you last tried Mutt, ut I've run across a =
lot of sample configs that are just copy into a text file and plug your inf=
o in and save as .muttrc in your home directory and it workks, a quick sear=
ch of mutt gmail config or mutt hotmail config usually leads to several sam=
ple ones to use. Thoughh I'm still unsure if anyone's made sensible modern =
keybinds or emaccs/emacspeak however, I've no clue where to even begin with=
 that with the sheer amount of keys/keystrokes that'd need changing up

On Thu, Apr 14, 2022 at 02:01:27PM -0400, Linux for blind general discussio=
n wrote:
> Kyle, I'm very glad to know that a Linux user with your level of knowledg=
e
> can still say that Emacs and Mutt have steeper learning curves than you f=
ind
> worth the trouble.=A0 (Correct me if I've oversimplified your view.) As i=
t
> happens, I've decided to try again with both Emacs and Emacspeak, and
> possibly Mutt, but now I don't feel like such a dummy for having had trou=
ble
> with this software in my early and even later days with Linux.
>=20
>=20
> Best!
>=20
> Al
>=20
>=20
> On 4/13/22 19:34, Linux for blind general discussion wrote:
> > These debates can be both informative and useful for those new to linux
> > > who haven't made their choices yet.
> >=20
> >=20
> > Unfortunately I would say probably not. Usually in situations like this=
,
> > once someone trying to make a choice to come to Linux or to stay where
> > they are sees all this get lost in a shell and hand-edit config file
> > kind of stuff, they usually run away before they get stuck in the
> > quicksand. Or worse, they end up tossing the virtual machine someone
> > told them to try into the recycle bin because it is just too hard to
> > use. Of course this also applies when new users are trying to find out
> > what applications are available for this or that and they are told of
> > EMACS, Mutt, Vim and the finer points of what people affectionately cal=
l
> > "links the chain" and "lynx the cat" vs w3m with all their quirks, or
> > having to learn how to get startx to play nice so that they can run a
> > more capable browser like the Firefox, Google Chrome or Brave that they
> > are used to using, that is not only more comfortable, but is necessary
> > on today's web, when all they had to do was to run a live iso of a
> > ready-made distribution with a fairly modern desktop on it and they
> > could be right at home in minutes. If someone asks me about this Linux
> > thing they heard about, I like to tell them about what they can have up
> > and running and feel fairly comfortable using in about 30 minutes or
> > less, and if they like that, great. Then if they want to learn more
> > about the power user stuff they can do, then and only then would I even
> > mention a terminal, a shell or terminal applications. I probably still
> > wouldn't say too much about EMACS or Mutt other than their availability
> > though, since even though I've been using various Linux distros for
> > almost 20 years, started of all things on Slackware, and even ran a hom=
e
> > web and email server fairly early on, even I gave up on both of those
> > because of the steep learning curve involved in just getting past the
> > initial setup process. Even now, even though I still have my own mail
> > and web servers, I still tend to use things like ISPConfig for my serve=
r
> > administration, since although the web server is very easy to set up,
> > deploying a mailbox on a virtual domain is still not for the faint of
> > heart, unless it has an automated script like what comes in most
> > web-based control panels that makes it much easier to set up. I mean if
> > not for the craziness involved in setting up a mail server with 3 or 4
> > mailboxes on 2 to 3 domains, I would just run caddyserver for my
> > websites, which can do a lot really easily, and the caddyfile is very
> > easy to understand and edit, although like most other web servers, it
> > doesn't support .htaccess, which does lots of per site URL rewriting an=
d
> > custom error stuff that just isn't as easy to do on a per-site basis in
> > other ways supported by non-htaccess servers. Still in any case, one
> > point I really like to make is that although other operating systems
> > tend to take features away from users, Linux tends to add features to
> > desktop environments and applications, or just to add applications, all
> > while taking care not to take things away from power users, and even
> > adds things that make the power user experience better over time.
> >=20
> >=20
> > Sure I know this list is a general one, aimed at users of all levels an=
d
> > skillsets. But being a more generalized list, it's probably better to
> > keep things on a more general level that while not excluding power
> > users, won't make new users turn tail and run for the window either.
> > This is the beauty of the GNU/Linux landscape as a whole. It's not the
> > wilderness, and it's not a barren wasteland either. It's a whole world
> > with enough freedom and even comfort for everyone. I found long ago tha=
t
> > it is not the geeky OS that only a server admin or someone with a
> > masters in computer science could love, and I do enjoy letting the worl=
d
> > know that I use it and they can too.
> >=20
> > ~Kyle
> >=20
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >=20
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

--=20
Jace's words are up there. Quoted and old messages below this point

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

