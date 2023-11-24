Return-Path: <blinux-list+bncBDP7P6HU4IERBNWFQCVQMGQE6AG4GVQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com [209.85.219.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 784897F6B29
	for <lists+blinux-list@lfdr.de>; Fri, 24 Nov 2023 05:12:40 +0100 (CET)
Received: by mail-yb1-f200.google.com with SMTP id 3f1490d57ef6-da3b6438170sf1470255276.1
        for <lists+blinux-list@lfdr.de>; Thu, 23 Nov 2023 20:12:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700799159; cv=pass;
        d=google.com; s=arc-20160816;
        b=xPvrJu3DoQxSDXUAx6aSUscQkGkcjHSwy8QtCS1Ba+mlQiwCpFJpxN+DEahYhnabdR
         k5A3oBH396cVj53Ra/P8W8SvrUJQe8TWfxxAMeL6AtB6GGUw714NwU10I99/wCA5i9yg
         PmpOMJiE837jqtGTQcZfZnECEHaunp4nqjZq+hZx1ujd9/py39FqGFtIxMr+/ovtREgv
         kPxXldDFgcoyL7JxvBE6sy1UWbACxBQUc8Oe6lsXyqP9D58bJ1qQeTQ0ynhkUZlX/aty
         MBtSMpsV1QgAv5u3INzV/CLBcubM2picUyUwWGVNSzxINnGpVMiHOT4YX+/lr9WcSLil
         VJew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=qZ2xsI+LuijZzcfgWxD/gdO3DM/CXDjVU/G1Rh9PE00=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ZBnfduGpfWeV5W9tfhXEjQ0nNwOJYSorAlmv6dLfdbPbo+VNBQ7WX840NCKx/08WDh
         KhtKRH4OOkQPoMXvGMKjjXqeqMTnyJqoUwo96jA1xgs5KBwbS5qr/E/3KzlCxdA/tdyU
         i6neIH6SmCGTx9Qn7U/8dzK+1DWNrEyHw236Ch48BGeuqK8Gi98wWtYtBGfPfOeNctB5
         zpgZR8QEN5It+HgBzidvyWG2cRWZG/Y776Nuk7B9GH/ldPAFL9y7bNiAdc93NJOfn6Dk
         arsclXfXONgEzz5mfSoxdYpiIQ8AAq23r1YWI+MOgfqOYHGPSt9ddNrvlSw2hKcMS5yf
         FKUw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.175 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700799159; x=1701403959;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qZ2xsI+LuijZzcfgWxD/gdO3DM/CXDjVU/G1Rh9PE00=;
        b=fc57gnMDle7dIYfWIMRBajzCSfEpBEpBOOB7JHP2uWx4jYK9c0il27kcI5nR8no8m0
         NNlNee9ixkW+2+S1EnNtxY6SGwF94z2QmYXL3nx1x8B/oT4id4a02ml1iHyZOuTHrlXg
         Tu7B0+HObZH638nIBitK2mscPvow0yq8uXE5vP0Y2ZPDAcWrzAK1lb2GCE2BoM6eVaaP
         1Jd5RVvG+wlhfJhnJLuUpjUrXtGx9Mdx8t9XTFU47tdMTVnxEiviXQG1U7NZ530dpd4r
         TkFC1tqny8JX1a4tSEIaxYslFNytPUEa8aayn0xSnAjp/ShOw3cCv0Oc3INfhxJEkr43
         yEHQ==
X-Gm-Message-State: AOJu0Yy1qIwQzT/BuWhPRstGJuzZVjBrNN8reNqdonWaCn+VPloYCvS+
	X4OqBtu1HmuuabyWVA1cvtJn7w==
X-Google-Smtp-Source: AGHT+IEdMY5MbIBrrwq/fxO17RoDUq74UtdLDaWAuF58dYxsbXZF/9q5LxxH/DWAg+P2pZwkUYZriw==
X-Received: by 2002:a25:c8c5:0:b0:da0:53d2:8f46 with SMTP id y188-20020a25c8c5000000b00da053d28f46mr1031564ybf.25.1700799159145;
        Thu, 23 Nov 2023 20:12:39 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:3c47:0:b0:db4:908:8737 with SMTP id j68-20020a253c47000000b00db409088737ls132304yba.1.-pod-prod-03-us;
 Thu, 23 Nov 2023 20:12:38 -0800 (PST)
X-Received: by 2002:a81:4a55:0:b0:586:9ce4:14e8 with SMTP id x82-20020a814a55000000b005869ce414e8mr951625ywa.52.1700799158427;
        Thu, 23 Nov 2023 20:12:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700799158; cv=none;
        d=google.com; s=arc-20160816;
        b=Dd0m/ruJ5HyfDyqsxFjAhzQSONwLSi5ObqMI71wPh1oK79iIjFKcPinnE801/RYL2o
         q0CO9bNQt6Z1SZi59CANBkhqUOFk1XVJOu3oRJPXu7MHDIm03DjJRXZXg+crwZtaXEIO
         PpGgFVbJlN8ILoaQMsXOwcCfOajrnSWLzj75KskB59esKPn6bm1jOvX1o5u/gmIiGwYX
         fRbp+2+0hQhQ6NsK90+e4s1N9QtDz5+u16LbnP1Et/+8sJ9GP9m+q5wSY1XmEYd4nhNJ
         f9Gvx+CMrPCRpRlnDdBg1kX0lPZnSk4wtcMhZRsRbPqnM1WJFREd3TfJqlF/nZbCtWMh
         4zig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=Vyfa1IR2GpLVe7elPvGAAS7ueEeXLyMxBgJLsVPuF/c=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=lOGjjYmBQUf2C01i/htWEvj4BVIvZwXu4TjfpD7bqMNhh+4clYEeSbT84dPYHkgM0a
         fnmKhuuy5IelrstAHWBFnl2ixS7UspShT5JlBaNz1tgqn6+q7L+w5Fk6zHZMWO9oG0sI
         LxtieialSgi0RBk+yeaKQrV8noibV/bXtgfY4L0SCkF2TG0f8ALMI3/xhOp6vJyZjeva
         gsyo1fGM6hvmV7KDMT44lGkpLjLfoYyoE1GCxZEliE8NeqcZw6/1mWv3IsfDw1m2J/dr
         glAQOUrjggqW1THBubCkq4IB/4ee+padNRWdBr2cq/W3LnfRmunu4+1GtrglUpgceFt4
         lqGg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.175 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id y8-20020ad45308000000b00679feaa1794si2439763qvr.264.2023.11.23.20.12.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 20:12:38 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.175 as permitted sender) client-ip=65.20.63.175;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-641-wo4Al1G8Nf-Jt55TSA1hOA-1; Thu,
 23 Nov 2023 23:12:37 -0500
X-MC-Unique: wo4Al1G8Nf-Jt55TSA1hOA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BE33D2825E96
	for <blinux-list@gapps.redhat.com>; Fri, 24 Nov 2023 04:12:36 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id BAEC1492BE9; Fri, 24 Nov 2023 04:12:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B3539492BE8
	for <blinux-list@redhat.com>; Fri, 24 Nov 2023 04:12:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D0FA3C025BC
	for <blinux-list@redhat.com>; Fri, 24 Nov 2023 04:12:36 +0000 (UTC)
Received: from altprdrgo05.altice.prod.msg.synchronoss.net
 (altprdrgo05.altice.prod.msg.synchronoss.net [65.20.63.175]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-487-19iMLcLjN7uJIYMeQzUVtw-1; Thu,
 23 Nov 2023 23:12:34 -0500
X-MC-Unique: 19iMLcLjN7uJIYMeQzUVtw-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 6558812B00B02EE0
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvkedrudehgedgieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgefgfedtkeffudefvddtffdtuefgteeiteevhfevveefgfekuefggefgkeevuedunecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdeh
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo05.altice.prod.msg.synchronoss.net (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 6558812B00B02EE0 for blinux-list@redhat.com; Thu, 23 Nov 2023 23:12:33 -0500
Received: from martin by wb5agz with local (Exim 4.94.2)
	(envelope-from <martin.m@suddenlink.net>)
	id 1r6NYJ-001SCw-PV
	for blinux-list@redhat.com; Thu, 23 Nov 2023 22:12:27 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: blinux-list@redhat.com
Subject: Re: Regex for spaces
In-reply-to: <20231121.153445.633.1@[192.168.1.100]>
References: <20231121.153445.633.1@[192.168.1.100]>
Comments: In-reply-to "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
   message dated "Tue, 21 Nov 2023 09:34:45 -0600."
MIME-Version: 1.0
Date: Thu, 23 Nov 2023 22:12:27 -0600
Message-Id: <E1r6NYJ-001SCw-PV@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <346760.1700799147.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.175 as permitted
 sender) smtp.mailfrom=martin.m@suddenlink.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

They give me headaches also but man, are they useful.

	These two were lifted out of some perl programming that I
wrote and I did not come up with them on my own.  They are about
as common as dirt in perl programming but regular expressions appear
in unix shell scripts, python and even some Windows applications.
Sometimes, the syntax changes slightly but regular expressions
are everywhere.

	So let's say there is a string called $displaystring.
We want to get rid of leading and following spaces that might or
might not be there so we could test for them or we could use
something that makes sure no leading or trailing spaces got added
for whatever reason.

	This is the regular expression that strips ordinary
blanks that might exist between the beginning of the string and
the first printable character

    $displaystring =~ s/\A\s+//;

	Briefly, what this all means:

    $displaystring is some string in your program that you need
to be free of spaces before the first printable character.  There
may or may not be such spaces.

 =~ is the tilde followed by the equal sign and is shorthand for
is part of.  You are looking to see if one string is part of
another.

 s/\A  means two things, s means substitute and \A is more unix
shorthand for the beginning of a line.  There is also the ^ or
shift of the six which stands for a literal line such as the text
between the start of a string and the newline character at the
end.  The \A, which is the actual backslash followed immediately
by the A or capital A is a little more complex in that the string
may actually have newlines berried in it before you get to the
real end of the string.
\s+//
is more computer shorthand for a blank space as in the backslash
followed immediately by a lower-case s.  The plus sign means one
or more of that space character.

	The // after the \s means to substitute every space you
find before the beginning of text in the line with nothing or to
put it in highly technical information processing language, strip
those suckers out so they never see the light of day.
;  That semicolon is at the end of perl code, c code, python and
a number of other languages and simply tells the interpreter or
compiler that this is the end of this or that statement.

    $displaystring =~ s/\s+\Z//;

	This was the second regular expression and it's job is to
strip all the spaces that may or may not be between the last
non-space character and the newline.

	The \Z shorthand as in backslash immediately followed by
Capital Z is shorthand for the very end of the string and there
is also a $ or Dollar Sign which is shorthand for the end of a
line that is not necessarily a whole logical line but maybe
appearing on the screen from left to right.

	I know that is a little more confusing than you might
like, but basically, if you use \A for the beginning of the RE,
it's best to use the \Z for the end.  If you use the ^ for the
beginning, then use the $ for the end but don't mix them.  I'm
not sure if you can even do that but if you get away with it some
times and it blows up other times, you have been warned.

	There are lots of good articles on line about regular
expressions so I am sure we all can stand to learn more as they
are quite confusing at times.

	Also, the \s space is a Space character.  Tabs and
formfeeds will cause spaces to appear on your screen but regex,
themselves, will not treat them like we treat blank spaces.
You'll need some other regular expression depending upon what you
are trying to accomplish.

Martin

"'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com> writes:
> I am not good with regexes at all. They give me a headache lol. Can 
> anyone supply me a regex that will remove any trailing spaces in front or 
> at the end of a file name? I use the program brename:
> https://github.com/shenwei356/brename/
> I have a regex to remove double spaces, but now I need one that will 
> knock off leading and trailing.
> Thanks for any help.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

