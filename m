Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEA7767414
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jul 2023 19:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1690567113;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cNdZ7kCCqJKXakEeoQ+16R4pNEVOtXmFjSBjcATe5w0=;
	b=PfcbQRhDLKFrjBoB2XqP5J8Tf6HClVDj/IvgVWlyGupBHz6ad9ZKtXCdUNxoQ6G2xvM/2B
	6LhZZbgVESxknyljghFNkxcFsA0JONsElOXzs7NQ2XLpugA+PEV4bUQXF83RNVP214mBfk
	7IdAWriFlpisN92tkH+GLHcHDYPgpDQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-441-k1x85c33Pe-J6cuSAlwJsg-1; Fri, 28 Jul 2023 13:58:31 -0400
X-MC-Unique: k1x85c33Pe-J6cuSAlwJsg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 144E1805951;
	Fri, 28 Jul 2023 17:58:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F40BD40D2839;
	Fri, 28 Jul 2023 17:58:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7D07219452C8;
	Fri, 28 Jul 2023 17:58:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 28 Jul 2023 13:58:24 -0400
To: blinux-list@redhat.com
Subject: [orca] Re: Orca's notification messages feature has been rewritten
 (fwd)
MIME-Version: 1.0
Message-ID: <mailman.2200.1690567106.3172874.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



-- 
Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
soap, ballot, jury, and ammo.
Please use in that order."
Ed Howdershelt 1940.

---------- Forwarded message ----------
Date: Thu, 27 Jul 2023 23:53:42
From: Joanmarie Diggs <jdiggs@igalia.com>
Reply-To: orca@freelists.org
To: orca@freelists.org
Subject: [orca] Re: Orca's notification messages feature has been rewritten

Orca should never freeze up, even in Wayland. If you can reliably
reproduce a freeze, please file a bug and attach a full debug.out.
Thanks!
--joanie

On Fri, 2023-07-28 at 00:45 +0100, Harley Richardson wrote:
> Hello,
>
> I'd be interested if there was something in gsettings that allowed you
> to do that, there's a lot of hidden stuff that gnome doesn't expose.
> While a mouse movement could be done, there comes the issue of Wayland
> and if you're doing mouse stuff on Wayland, you could get a situation
> where it'll just completely freeze Orca up. That's what can happen if
> you left click on Wayland still and the control doesn't have the actions
> Orca looks for since the action menu isn't in master or gnome-45from
> what I can see. Maybe it could do something keyboard related without
> interrupting itself or causing user inconvenience.
>
> Harley
>
> On 27/07/2023 19:19, Joanmarie Diggs wrote:
> > Hey Harley.
> >
> > Thanks for testing. I believe this is a gnome thing. And has nothing to
> > do with accessibility. Here are my steps to reproduce the behavior
> > without Orca running:
> >
> > 1. On another machine, ssh into the machine where the notifications
> > should be displayed.
> >
> > 2. Send two messages quickly via notify-send.
> >
> > 3. Do not touch the keyboard or mouse on the machine where the
> > notifications should be displayed.
> >
> > Results: The first message visually pops up and stays on screen. I
> > walked away for five minutes or so. When I came back, that first message
> > was still showing. Then I started replying to your message and the first
> > message immediately disappeared and the second message finally appeared.
> >
> > My theory is that it is a "feature." Keeping the message on screen until
> > the user is presumably viewing it means less likelihood of missing a
> > message. That of course is inconvenient for those of us who want our
> > notifications immediately. Haven't had time to figure out if this
> > configurable in gnome or not.
> >
> > Maybe we can add an Orca feature to synthesize a slight mouse movement
> > periodically when it's not speaking. This would trick gnome-shell (or
> > whatever) into thinking we're ready to see another message. I am mostly
> > -- but not entirely -- joking.
> >
> > --joanie
> >
> > On Thu, 2023-07-27 at 18:52 +0100, Harley Richardson wrote:
> > > Hello,
> > >
> > > This works great so far, but there's one instance where it seems to fall
> > > over. Not sure if this is a gnome thing or an Orca thing, but it's been
> > > around for ages and I thought the rewrite would fix it. I get a decent
> > > amount of messages from a few things. WhatsAppDesktop, telega, Discord
> > > and other stuff, all of which are effected. After a while of
> > > notifications puttering along, there will be times when they just don't
> > > read. I'll hear a sound and nothing else. But if I press any key,
> > > control, shift, you name it, after a few seconds I'll hear the
> > > notification being read as usual. It doesn't matter what app I press the
> > > key in either. I know that mpv basically stops orca from doing anything,
> > > and it did the same thing even then. Is there something the gnome
> > > notification daemon is doing that Orca should be looking out for? It
> > > happens more often than not when I haven't been pressing keys for a bit
> > > due to me listening to music, then when I press a key it's like
> > > something triggers and the notification reads after a bit. It won't read
> > > after it's gone away off the screen and I press a key though, so to me
> > > it's suggestive of events not being fired.
> > >
> > > Harley
> > >
> > > On 26/07/2023 21:39, Joanmarie Diggs wrote:
> > > > Hey all.
> > > >
> > > > Inspired by Arkadiusz's observation that arrowing in notifications
> > > > doesn't work in master, thanks to the new key handling bugs, I basically
> > > > completely rewrote Orca's notification messages feature. From the commit
> > > > message:
> > > >
> > > > * Keep the last, previous, and list bindings as-is
> > > > * Add a binding for next
> > > > * When the show-list command is used, present them in a Gtk dialog
> > > > * Add and present relative timestamps with each message
> > > > * Add ability to clear all notifications with the dialog
> > > > * Create dedicated keybinding group for the new notification presenter
> > > >     (Yes, we should and will create more dedicated keybinding groups.)
> > > > * Present notifications immediately rather than queueing their event
> > > >     up. This will hopefully help solve the flaky bug where Orca doesn't
> > > >     present the full (or any) text from the notification. That bug is
> > > >     due to the notification popup being destroyed before we have its
> > > >     content.
> > > >
> > > > This should solve the broken arrowing because arrowing is no longer a
> > > > special Orca thing that should be a command because you're in a "mode."
> > > > If you bind and use the command to show the list, an honest-to-goodness
> > > > dialog with a real list whose navigation is provided by Gtk3 will
> > > > appear. Problem solved. And yes, this arguably does fall under the
> > > > heading of "well that escalated quickly." *grins* Jokes aside, the fewer
> > > > off-screen special modes we have, the less likely we'll get bitten by
> > > > key handling bugs. And the less likely sighted users unfamiliar with
> > > > Orca will accidentally find themselves in a mode they cannot see and
> > > > don't know what to do.
> > > >
> > > > I'm afraid this change will likely break any keybindings you had for
> > > > this feature. On a happy note, the notification message commands have a
> > > > dedicated group in the keybindings list. This means that you can arrow
> > > > to the default group and collapse it, arrow to the unbound group and
> > > > collapse it, etc. soon you'll find the notifications presenter group.
> > > >
> > > > As indicated above, I'll be doing more of these groups so we don't have
> > > > "default" keybinding soup.
> > > >
> > > > Anyhoo, please give it a spin and let me know what you think.
> > > >
> > > > Thanks!
> > > > --joanie
> > > > _______________________________________________
> > > > orca mailing list
> > > > orca@freelists.org
> > > > https://www.freelists.org/list/orca
> > > > Orca wiki: https://wiki.gnome.org/Projects/Orca
> > > > Orca documentation: https://help.gnome.org/users/orca/stable/
> > > > GNOME Universal Access guide: https://help.gnome.org/users/gnome-help/stable/a11y.html
> > > _______________________________________________
> > > orca mailing list
> > > orca@freelists.org
> > > https://www.freelists.org/list/orca
> > > Orca wiki: https://wiki.gnome.org/Projects/Orca
> > > Orca documentation: https://help.gnome.org/users/orca/stable/
> > > GNOME Universal Access guide: https://help.gnome.org/users/gnome-help/stable/a11y.html
> > >
> > _______________________________________________
> > orca mailing list
> > orca@freelists.org
> > https://www.freelists.org/list/orca
> > Orca wiki: https://wiki.gnome.org/Projects/Orca
> > Orca documentation: https://help.gnome.org/users/orca/stable/
> > GNOME Universal Access guide: https://help.gnome.org/users/gnome-help/stable/a11y.html
> _______________________________________________
> orca mailing list
> orca@freelists.org
> https://www.freelists.org/list/orca
> Orca wiki: https://wiki.gnome.org/Projects/Orca
> Orca documentation: https://help.gnome.org/users/orca/stable/
> GNOME Universal Access guide: https://help.gnome.org/users/gnome-help/stable/a11y.html
>

_______________________________________________
orca mailing list
orca@freelists.org
https://www.freelists.org/list/orca
Orca wiki: https://wiki.gnome.org/Projects/Orca
Orca documentation: https://help.gnome.org/users/orca/stable/
GNOME Universal Access guide: https://help.gnome.org/users/gnome-help/stable/a11y.html

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

