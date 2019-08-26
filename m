Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE619D58B
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 20:11:29 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A444910C0311;
	Mon, 26 Aug 2019 18:11:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE9BD5F7C0;
	Mon, 26 Aug 2019 18:11:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3305818005A0;
	Mon, 26 Aug 2019 18:11:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7QIBFfh015774 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Aug 2019 14:11:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AC830614C2; Mon, 26 Aug 2019 18:11:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx07.extmail.prod.ext.phx2.redhat.com
	[10.5.110.31])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7126A614C5
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 18:11:12 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1A09CC075BD2
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 18:11:12 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id m24so16056542otp.12
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 11:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=J7tV1MIcszxtTRrUxC0DXWmDiRtg/GCSHgM3N1S9V6g=;
	b=bVRrEEhBmY4U98eYJHmwPzeaLCLu7Yyme4EGEYvHYh3kHGjqyvgTttv+RaX4BnmIMz
	1Hqqa78YoR8ZEBrpheLv9MEpsa6pXet9eWo90JK2OyuatKDMo0mzq2HghDyqImu8wVGj
	coonclKGm+0A6JTL/+6D0r/0mqqzU1OggdQ1d014+Xf8axtWa7LmkQcyYQUipadXAmOD
	JA6dzfNQEqFUy0P4gS9C+Ws5KxzX/+KISREIoNU1LnIqTCSj9EI26e0OyYJO97rZAbwC
	sh0ph1M6TMzLz77YsLI7cpgGiBepg/mYgH9dF4c4sZ2k1bJ/oTZDSNAeshjfH3NqGmP2
	S2GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=J7tV1MIcszxtTRrUxC0DXWmDiRtg/GCSHgM3N1S9V6g=;
	b=qCmWTfJoQ8cTdhSpbZQ4N2bMzfPQoJX+ei0LIAv8xC9hPNb5Gr+5Xx8VG9OOJZHQ4v
	NxP9uut0eXePDHkC0t4N4UzSKA3fkig5N2aM73/sPC5nGmQIowbd3hI12b2GJA1KfYqK
	MwBctcQkxmuhQDxbEHpOEKLBs5nTnTMrQMC8o1+upnURhL2Fs4rJiWFdpi0wWxaH34/c
	4GSRjN95b71qL+jM4JEEXDbsjOMiXY/FpwUaFQ90+rc42HyzA/A4qyC4pdaYqIZUvlbm
	BxHpt9uwhkb+Dhvq6GoCk/0lXS6Z4+iZFoM0BpxKH7efkR7EQmf2RUawjj8BlfRgGm/a
	UfGQ==
X-Gm-Message-State: APjAAAVAaiQ/snTcz4Vy5FWANCS2tr8ayek+Wl66PPDqyEw1yhytxPM+
	hjgRfpQaoBPqZ16t0q4VMNY8VNfT7Vc88soPFjjF9Q==
X-Google-Smtp-Source: APXvYqx6UociOJLXQuaIk1lA5ZiJXcF/YsrtY21rXOMuBi5rP7Yi7PfssJLtAAMU+1NfOORc0Bv6pCIEfshymcxx9gY=
X-Received: by 2002:a05:6830:1683:: with SMTP id
	k3mr17342655otr.103.1566843071397; 
	Mon, 26 Aug 2019 11:11:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Mon, 26 Aug 2019 11:11:10 -0700 (PDT)
In-Reply-To: <f4ac871f-36c4-259f-c571-af1ce6a109c7@gmail.com>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
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
	<CAO2sX3352S6RrOXjDEqZBC6X=_c6zzcSN_61QKcAaG_wRX3r_A@mail.gmail.com>
	<Pine.LNX.4.64.1908260757270.23329@server2.shellworld.net>
	<f4ac871f-36c4-259f-c571-af1ce6a109c7@gmail.com>
Date: Mon, 26 Aug 2019 18:11:10 +0000
Message-ID: <CAO2sX308OYmC-821f0kgtJDY3gCrvb=8X8WjiYjkfWHRJN3irw@mail.gmail.com>
Subject: Re: amazon?
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.31]);
	Mon, 26 Aug 2019 18:11:12 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]);
	Mon, 26 Aug 2019 18:11:12 +0000 (UTC) for IP:'209.85.210.41'
	DOMAIN:'mail-ot1-f41.google.com' HELO:'mail-ot1-f41.google.com'
	FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.41 mail-ot1-f41.google.com 209.85.210.41
	mail-ot1-f41.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.31
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.65]); Mon, 26 Aug 2019 18:11:28 +0000 (UTC)

Perhaps two people using the same tool will never use it in exactly
the same way, and perhaps two people, no matter how similar in their
raw capability will never use the exact same combination of tools and
techniques.

But to go from "no two people are exactly the same" to "No one else
could possibly find this tool I use daily useful" seems rather absurd
both logically and empirically, especially when it could be argued
humanity's biggest advantage as a species is our ability to make tools
and then teach others how to use them and the refinement of both tool
and technique over time.

Sure, a master craftsman could create a new tool custom made to his
specifications that, in his opinion, is superior to all other tools
for the purpose he made it for. He could then keep the tool to
himself, thinking no one else could possibly find it as useful as he
does or he could share it with others in hopes someone else will find
it at least somewhat useful. By sharing his work, somoeone might even
find a use or refinement the inventor missed entirely.

Personally, even if it's a tool I find useless, I'd generally prefer
the world where an inventor chose to share their invention over one
they decided to keep it to themselves, for the more tools we have
available, the better the chances any one person will find a tool or
set of tools that is useful to their needs. Besides, it's nice being
able to pull a ready made tool, even one not optimized for my purpose,
off the metaphorical shelf instead of having to make every tool I use
from scratch, and I'm sure there are plenty of able-bodied individuals
who would be lost if they ever had need to make even something as
simple as a knife themselves, never mind something as complex as a
computer.

And at the end of the day, WCAG is just that, another tool in the tool
box that has accumulated over millenia of human ingenuity. Perhaps one
that could go a long way towards making other tools easier to use for
a greater number of people, perhaps one that will make it easier for
other tools to work together, but to speak of it as a silver bullet in
nearly the same breath as the claim that any other tool could never be
as useful to another as it is to the person speaking about its
usefulness boggles at least my mind.

Now, maybe I'm misreading your words and you aren't claiming what I
think your claiming. After all, human languages are just another class
of tool in wich humans have developed many different variants, and
even for people who grew up learning the same language, it can be hard
for two people to fully understand each other's thought processes,
perhaps even impossible.

That said, I intend to continue doing my part to help others find
tools that meet their needs or learn new techniques that make the
tools they already use more useful. I realize any advice I can offer
might prove useless as what worked for me in a specific situation
might not work for another in a similar situation, and I'll probably
occasionally make a fool of myself or accidentally offend someone, but
if I can help even one person, it will have been worth the effort, and
I would rather try to help another and fail than to knowingly leave
someone groping in the dark, be it literal or figurative, especially
if I know something that sounds like it might be helpful, and
likewise, when I ask for help, I try not to discourage those who gave
me less than useful advice from trying to help other in the future.

After all, helping each other is arguably the main purpose of this
mailing list and others like it.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
