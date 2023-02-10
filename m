Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7427A6924C1
	for <lists+blinux-list@lfdr.de>; Fri, 10 Feb 2023 18:45:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676051136;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V6u0IBrh/2MnFbd4CGLCExgx9s3PlviyIIrFqj2ffmE=;
	b=ZLHJSCHoWskeZ7djIxqqkSWt0spQHmyW1+6Ue/IlF8xEd/fTx6oHhrAN83IxFf8iDncpWb
	RQ48RcP94kIB+1PUgovtqmevQZrujfeoCnYGMuE7731Ms6fNa4A5jubLrF8syw20XJKrqd
	0xrSO+yeCGDYrmXc5S544/YfYa1qv+c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-537-VN5db6VtOrKvgAEZbH4QoQ-1; Fri, 10 Feb 2023 12:45:33 -0500
X-MC-Unique: VN5db6VtOrKvgAEZbH4QoQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8F14885CCEA;
	Fri, 10 Feb 2023 17:45:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CE3CF2166B2B;
	Fri, 10 Feb 2023 17:45:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5362919465A2;
	Fri, 10 Feb 2023 17:45:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 10 Feb 2023 17:45:24 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Clipboard in gnome
References: <mailman.5776.1676049044.8169.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.5776.1676049044.8169.blinux-list@redhat.com>
Message-ID: <mailman.6032.1676051129.8177.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  X offers two different clipboards by default: the
"selection" buffer and the "clipboard", both of which should be
independent of Gnome vs. KDE vs. whatever.

The "selection" buffer gets populated by selecting text (usually
with the mouse, but also with the keyboard) and gets pasted using
the middle-mouse button.

The "clipboard" is what most Windows/Mac folks would find familiar,
cutting with control+x, copying with control+c, and pasting with
control+v (and many applications have similar Cut/Copy/Paste commands
in their respective Edit menus)

So using control plus X/C/V should work as expected across the vast
majority of applications.

I run a program called "clipit" that sits in my system tray (I
predominatly interact with it via keyboard shortcuts, almost never
by clicking on it) that keeps a history of the last N clipboard
contents, and can help synchronize the selection vs. clipboard
contents.

Additionally, you can use programs like xclip or xsel to access the
clipboard on the command-line similar to pbcopy/pbpaste on the Mac.
So you can put a text file on the clipboard with

  $ xsel -ib < my_file.txt

or put the output of some command into the clipboard

  $ ps | xsel -ib

or grep the clipboard contents for some pattern:

  $ xsel -ob | grep "pattern"

You can even chain them so you can use sed to process your clipboard
contents like

  $ xsel -ob | sed 's/old/new/g' | xsel -ib

Or use awk to sum the list of numbers in the clipboard, and append
that sum to the clipboard contents:

  $ xsel -ob | awk '{t+=$1}END{print t}1' | xsel -ib

I have a shell function to strip out the utm_* tracking parameters
from URLs that uses this trick:

  utm () 
  { 
    xsel -ob | sed 's/&*\<utm_[^&]*//g;s/[&?]*$//' | xsel -ib
  }

That lets me copy a URL to the clipboard, run "utm" and the URL in
the clipboard has all the UTM tracking bits removed.

For context, the "-i" means that xsel should populate the clipboard
(take it as *in*put) and the "-o" means that xsel should dump the
contents of the clipboard on standard-out (provide *out*put).  The
"b" option says to use the "clipboard" buffer rather than the
"selection" buffer.

I don't use xclip as much, but it has similar options.

Hopefully this gives you some tools to make your life easier.

-tim



On 2023-02-10 11:10, Linux for blind general discussion wrote:
> Most of my unix stuff I've been doing for 34 years is in an ASCII
> text command terminal, no GUI so I am in unfamiliar waters, here,
> even though I have tried tidbits of orca and gnome on occasion
> for a number of years but always got shot down by running it on
> systems with not enough horsepower to run X-windows without
> crashing.
> 
> 	I now have a HP PC running bullseye that has quite enough
> resources so am using that also these days but I am most familiar
> with the Windows GUI and nvda and use the clipboard all the time
> there.
> 
> 	So, my question here is whether there is an orca
> clipboard.  I did do 
> 
> apropos clipboard 
> 
> and saw a reference to TK::ClipBoard which is a perl module and
> xclipboard which is an application.
> 
> 	Is there a clipboard native to gnome or orca?  Also
> acceptable is some application I can install that produces a
> clipboard in gnome.
> 
> 	Clipboards are fabulous things when one has a huge url or
> shell command with gobs of tricky syntax where one misplaced
> space can blow things up.
> 
> 	It's nice to see there is a perl module for clipboard but
> right this minute, I would be happy with a clipboard similar to
> the one in Windows or pbcopy which lives in MacOS.
> 
> 	Thank you.
> 
> Martin McCormick	WB5AGZ
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

