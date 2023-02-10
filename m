Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E700F69267B
	for <lists+blinux-list@lfdr.de>; Fri, 10 Feb 2023 20:36:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676057811;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KHTx5ORiiSPhT4ng1s1E8athUsGHJs0SJ5sIAj3vSFA=;
	b=cPmYOvxv+DZbO2L5UIjUIoKZ1iH9UDyas4FOl19jfGNHrT6LfCt7nQiDDVuLqq01VCtLmG
	bIE9AIT29Rqr5IWvkex5Ot1xpa6kmChAtATcO73wMhc+peP6rTDSCmN3b93e+6C6R2nb/w
	lwMyOxfWOaNNA1bXybaioUWVfIJwPHA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-672-AHP32qZ4P0SbSemxdcWqvw-1; Fri, 10 Feb 2023 14:36:50 -0500
X-MC-Unique: AHP32qZ4P0SbSemxdcWqvw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E7C8101A52E;
	Fri, 10 Feb 2023 19:36:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 45884C16023;
	Fri, 10 Feb 2023 19:36:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A2E2819465A2;
	Fri, 10 Feb 2023 19:36:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 10 Feb 2023 19:36:39 +0000
To: blinux-list@redhat.com
Subject: Re: Clipboard in gnome
References: <mailman.5776.1676049044.8169.blinux-list@redhat.com>
 <mailman.6032.1676051129.8177.blinux-list@redhat.com>
 <mailman.5817.1676055329.8175.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.5817.1676055329.8175.blinux-list@redhat.com>
Message-ID: <mailman.5717.1676057804.8176.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here again.  Speaking of clipboards and security, that's the
one aspect I've had to take extra care with.  Sometimes my password
manager will put a password or credit-card number on my clipboard
and clipit will dutifully note it and keep it in the history.  So
I have to be extra careful to go back and edit the clipit history
to remove either the particular sensitive information, or (more
lazily) just clear the entire clipit history.

Just a precaution to keep in mind as you venture forth (smile)

-tim

On 2023-02-10 12:55, Linux for blind general discussion wrote:
> Thanks everybody.  I just also picked up clipit and the install
> was as routine as it gets.
> 
> 	I'm noticing that Debian bullseye's security link that
> one uses with apt seems to be broken right now for some reason.
> It doesn't prevent one from updating or installing apps but as
> someone who worked in network operations for a university for 25
> years, you don't want the security framework to lag behind.  The
> paranoids really are out there and they are out to get us.
> 
> Martin McCormick
> 
> Linux for blind general discussion <blinux-list@redhat.com> writes:
> > Tim here.  X offers two different clipboards by default: the
> > "selection" buffer and the "clipboard", both of which should be
> > independent of Gnome vs. KDE vs. whatever.
> > 
> > The "selection" buffer gets populated by selecting text (usually
> > with the mouse, but also with the keyboard) and gets pasted using
> > the middle-mouse button.
> > 
> > The "clipboard" is what most Windows/Mac folks would find familiar,
> > cutting with control+x, copying with control+c, and pasting with
> > control+v (and many applications have similar Cut/Copy/Paste commands
> > in their respective Edit menus)
> > 
> > So using control plus X/C/V should work as expected across the vast
> > majority of applications.
> > 
> > I run a program called "clipit" that sits in my system tray (I
> > predominatly interact with it via keyboard shortcuts, almost never
> > by clicking on it) that keeps a history of the last N clipboard
> > contents, and can help synchronize the selection vs. clipboard
> > contents.
> > 
> > Additionally, you can use programs like xclip or xsel to access the
> > clipboard on the command-line similar to pbcopy/pbpaste on the Mac.
> > So you can put a text file on the clipboard with
> > 
> >   $ xsel -ib < my_file.txt
> > 
> > or put the output of some command into the clipboard
> > 
> >   $ ps | xsel -ib
> > 
> > or grep the clipboard contents for some pattern:
> > 
> >   $ xsel -ob | grep "pattern"
> > 
> > You can even chain them so you can use sed to process your clipboard
> > contents like
> > 
> >   $ xsel -ob | sed 's/old/new/g' | xsel -ib
> > 
> > Or use awk to sum the list of numbers in the clipboard, and append
> > that sum to the clipboard contents:
> > 
> >   $ xsel -ob | awk '{t+=$1}END{print t}1' | xsel -ib
> > 
> > I have a shell function to strip out the utm_* tracking parameters
> > from URLs that uses this trick:
> > 
> >   utm ()
> >   {
> >     xsel -ob | sed 's/&*\<utm_[^&]*//g;s/[&?]*$//' | xsel -ib
> >   }
> > 
> > That lets me copy a URL to the clipboard, run "utm" and the URL in
> > the clipboard has all the UTM tracking bits removed.
> > 
> > For context, the "-i" means that xsel should populate the clipboard
> > (take it as *in*put) and the "-o" means that xsel should dump the
> > contents of the clipboard on standard-out (provide *out*put).  The
> > "b" option says to use the "clipboard" buffer rather than the
> > "selection" buffer.
> > 
> > I don't use xclip as much, but it has similar options.
> > 
> > Hopefully this gives you some tools to make your life easier.
> > 
> > -tim
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

