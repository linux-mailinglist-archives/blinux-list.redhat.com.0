Return-Path: <blinux-list+bncBD6J3OOK2IIBB6NYR6VQMGQECRXUAAA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FAB7F96B3
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 01:02:03 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-41cdc2cc0b4sf67878581cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 16:02:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701043322; cv=pass;
        d=google.com; s=arc-20160816;
        b=eoJXRRRO0WwjJhGIMtlhfARr1o09K1RTUNVXCP8PY7HXbbjc4hM6C+7TQRVdluMvGj
         FP//sZNpwFhxAmEI3hukxXuWV1X36kL8Fcwj7g3diK0E1DUepxQsdeELcBjsgGWuyZe3
         8+BlutAz3kA8WHjfD0EdFWAYaxDSj51NymwnUkeHS8RcEUUp6Dz0VmNOTYfo7tKEcMbf
         6fK27sGGlNz+xyVpQz+mOAZCsuvNH2BW9LLNk0jrpQNLn75b1tzo2WrQtauhgkuWr9nY
         P667l/ezeo3glLvHaKPM2aAKtKOov+iqi0Z152Uo0e+YpadxN8loFqryEtTMsu2ws3CT
         nRpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=DEI1Lhqe/Dow/ZJxFzKymDJe1z4eoJVolcYnpubSgMM=;
        fh=UXMxI4s4Djxgk+RlX09cLFOW2BmKQ694I1DkcKIh55A=;
        b=Fu0qmSWjjGulAPZCHLxSOQvwYakMQwWPFPEuzzITI1yOHk2c6m7vElIfKcNbFLr2OU
         lVr5BhQq40uHg6ksj4oAKGOSkxdeUjxpeN9zQJNpVRWJDk9+7IGff2eTjv74RNSJfc/E
         nALK2WQHBSjgLCj/4txamrRAnAkca2Mpie2Y87Llmk1dHPh/quK45BBDDyzF4b+FsHJH
         OGJJVNvloDKaCmKUG5QLk4imlbAOd9Uzp5l0+E2z87qS4hqAbSE12ODZnkNcOygyx10F
         pgV6iENuRq7rziuNavTsBahREiNb5Q/XRIqydNiB0HS3CZcyGKW2WnJpaJAluJs1HRIP
         0JIw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701043322; x=1701648122;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DEI1Lhqe/Dow/ZJxFzKymDJe1z4eoJVolcYnpubSgMM=;
        b=bsqKM5P0YGk4T+Gc2DV9OwApYmlkAy0sD+u6Th7CTJodW91LTrWBAOklI0zhLBBrtp
         BMBYs6Aa2tbCgsUqr067c3BlJ6S5asotE6AHZDQBtQcUdqTJknZ0UcXaDL1jmvheoh25
         6ejtDbiOAQvbnH/u776rDv5bfvgEhmwnZUtzeYxUCYp9etYFG5H0ygyFSfDzc06Uqn6c
         5+IrkYbD0K8x3mNbDHcdax76HicOXxR7sqQs9o9DkgpkXGNsOPrUHN9osoePXw8JC2Fc
         gQC5aA9In5R0JERH5ObUWjGxuVzFqrjGBkJ3DcqouV2RNVRMwI2zgVmmAeaoUcav5qVk
         KBqA==
X-Gm-Message-State: AOJu0YyfWhb9GZAzfICBoIMio3FB9Xhw+eP2cthpPrvoXFoHV4oPd+M0
	vf0plxrJknp22rV9b1kS0caBBQ==
X-Google-Smtp-Source: AGHT+IGNEbc+DDMs9XUd54yTxQHnIsEb3IJOduY2/bUCBZgQSXaKbsOp491U/OoKShFgIDDWv1TWmA==
X-Received: by 2002:ac8:5ac4:0:b0:41c:d62b:fb51 with SMTP id d4-20020ac85ac4000000b0041cd62bfb51mr22736228qtd.26.1701043321739;
        Sun, 26 Nov 2023 16:02:01 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:58d1:0:b0:423:707e:9eb with SMTP id u17-20020ac858d1000000b00423707e09ebls3460642qta.0.-pod-prod-00-us;
 Sun, 26 Nov 2023 16:02:01 -0800 (PST)
X-Received: by 2002:a05:620a:468d:b0:77d:72cf:c47 with SMTP id bq13-20020a05620a468d00b0077d72cf0c47mr16737596qkb.35.1701043321144;
        Sun, 26 Nov 2023 16:02:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701043321; cv=none;
        d=google.com; s=arc-20160816;
        b=dqZ1Afffe8KU+S+VCaLOxxbXMfgdMrM6qXLspG0GkfaInKLPwxqdlbeRq0Ee5IX3YJ
         cbR0Qm8qH9ZRoO/6g887mQTjymq1rgRlDyYczGrQ4EmJrqJcx81oHKVloXdeGtk21DCZ
         tTg2dV6YYZdufn7n9LSH9ykta+4xfhpnxiE69dFNp1qwjdwh52lWZXZLN/WbZtdsyibW
         jS60dg27pv4y84dolcaYqqRMqrBkpYID3vY1bxiG47NyD766cgPrPjqxK5ienEb+NlgS
         lYz4Wp6q2HRg5OFU+IXuCWNVhNE0ujrv5S/mpJSD0iJLuaER4yHTemoKodsynzbbU6a1
         dbUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=IzMunZICZyqm8UzpZKS3FpbEUK3tNVD0075BNCPYgf4=;
        fh=UXMxI4s4Djxgk+RlX09cLFOW2BmKQ694I1DkcKIh55A=;
        b=y//b55I/+TAnXlWr/cVFKQfLjdtkC+QtOpvRsrOvrc5/OSs3eAqHhDt+qtSHGgc4Mx
         n7N3wNmnjZfpwzbELKOTsvabIn/HJg/kf3J8Fsx57Gcu9w+IbXwvUqAUhKVwiaLgFAFy
         w7SEa2yhZzypaans7WhJcCnEp1QFVYtgyA7tfFf3gpNLzA4FkwS8QmtdOHT4UrE8e/gh
         /4JWh66D0yF5UWYwdRZuk57mNS3A4TJ5OvxX3Zt6z4hcbbNBdo+jGWa5RLb1LuvVjFMb
         4ROSKHUFDNpw6lHS0w/JQcD/P/t7fG/Ql3pA4Qug5hA/HyaA8zDqfZsvG5K7aByzwYpl
         efKA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id de42-20020a05620a372a00b0077d7cf26bc9si6889899qkb.564.2023.11.26.16.02.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 16:02:01 -0800 (PST)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-363-b2psjz2LMR2jAgCY785LDw-1; Sun,
 26 Nov 2023 19:01:59 -0500
X-MC-Unique: b2psjz2LMR2jAgCY785LDw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B9EF282476A
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 00:01:59 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 57E09492BE9; Mon, 27 Nov 2023 00:01:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 50D6F492BE7
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 00:01:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 314C6101A52D
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 00:01:59 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-630--J9AIfoAMa-W2O_AuZD7vg-1; Sun,
 26 Nov 2023 19:01:57 -0500
X-MC-Unique: -J9AIfoAMa-W2O_AuZD7vg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MDQeK-1qzBav29ji-00AXZk for
 <blinux-list@redhat.com>; Mon, 27 Nov 2023 01:01:55 +0100
Message-ID: <20231127.000253.335.7@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: "Linux for blind general discussion" <blinux-list@redhat.com>
Subject: Re: vlcrc file needed
Date: Sun, 26 Nov 2023 18:02:53 -0600
MIME-Version: 1.0
In-Reply-To: <0ac79846-59e1-8efe-8444-7240592473ad@panix.com>
References: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com>
	<CAMuGJS=qR4KKwsFrDNa3+tENTWHMZ3r1Z+zHc=AgGHTg0st5Mg@mail.gmail.com>
	<0ac79846-59e1-8efe-8444-7240592473ad@panix.com>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Provags-ID: V03:K1:CoACO/P1EtyCMAwvVyGOjD0fJ8KabPKOqxKVv+se/6u3UgENTiB
 jNUWXK0LUVa17PJxYiMyJqjhku1qnxyzhXAKAal3sd7WexCylZYHn7I+bgOXmpBXMMgTA5i
 Q82/9BWquyj/Y6va7TZP6Uu0COdjkqvcrIHeVTgZZ18eDxDX34pInP7ZGxnaJXbm8LnYAFy
 /tTDsw9GPbRlDUL99XMGQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:ekhJuDLlgdU=;ZD0jBXTxHd/djoie+/JSF2dcAwK
 AtqwbLH3lmxNVApJNMKcMXQazJs1i+7OYC2rwTCQM/lP7dWJ88tThnl11vFhlvoICOPIKNPZA
 xEnr4H3rZUy+cpUUqUiNnkCkDg4UoSgZAcvtNB51IoPM7m6O1EY2UHuxsr0EvBLhiZ/dcNkYw
 3RQvjmrhftNR4kr+Y7UhyG8PwcKZMWSrYa/Gwq4XBGMzqavoQQ1nj39U7fcGhj7ym//tbT4eW
 y49R6tEu/fpr39QvHvCKYoQdGExzz07iNCqq9MmdeW56rQJcGYeMa8c6ayg6nSvjS1oLF+ndS
 7M6eooBqD88bN1izAASwUhh4UljeSs74HaWF3oYlOVbFyMWeSLajZQjmgsDk5cibAm9pzfD7e
 HGNV65T+8cQyYDgyzyQTNeT8m6/m/wLV4noNwBCn+xIFRcZ+a5Ixlp9nc4z3hLlwBkVeCtco6
 ZMqrpGg6FCvAc3PshqDDFQTW/WAx9fDJcZV4TsT3JNWVCockSYaRGJRlYgqzEr+3EyqeJk6jT
 tLyuEnjiuwP6GI9s0t9n4IC0mHJBIGo+QmAOUizpk/8YsbYQLDYwWhZuFXl/59lxmj3vv53UA
 dnl1VF0rh6DommzJQCx73xh+gzUNmjon4eMnVNPfG+dSwVjoi+EMpNcnXAL65nPq3FtDDPg5k
 ifpLT2fgLFOyS9htkUiPJb7dsQNAYXWSuh5IyWNbQhKz7KlUxNrm7+IpqxzQwcU64Kx6Wq/YX
 a0ndIBmKCLcaJLHSRXdytMeetiES14P7e0A27qlvwP/802y2YgbO137nCmQh1STX+QaohYpZ6
 4W6pWTyakB9oKVEobL9YDaJPk2y2+m9rt8pBELD5qBJtPA6YphqwrVYEBTs5NU2/lNYfnt9gc
 Ki5BkdE9ScxVyqDLpbKrBT26HQhCcNTDWQsKkxRxrNb4k4fLQCx265c4p8nDegGdX/gHjWpEH
 BiaHASSpbD+nf6oTlhvyXl7Mh+g=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

If VLC has an irc channel you could try asking there.

----- Original Message -----
From: Jude DaShiell <jdashiel@panix.com>
To: Karl Wilbur <karl@karlwilbur.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sun, 26 Nov 2023 18:37:47 -0500
Subject: Re: vlcrc file needed

> The github site is gone no longer exists.
> The incomplete documentation on vlcrc configuration location I have
> already read.
> If missing a vlcrc file how to get vlc to make you a basic vlcrc file that
> could then be edited would be a nice thing to know since configuration
> file format and valid contents isn't documented.  I'll try cvlc and see if
> that works.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Sun, 26 Nov 2023, 'Karl Wilbur' via blinux-list@redhat.com wrote:
>
> > This is pretty old but might be a good place to start:
> > (a GitHub repo that has someone's `vlcrc` file in it)
> > https://github.com/bashwork/settings/blob/master/linux/.config/vlc/vlcrc
> >
> > Also, VLC docs about config file location:
> > http://www.videolan.org/support/faq.html#Config
> >
> > --
> > Karl Wilbur
> > 513-322-2481
> > karl@karlwilbur.net
> >
> > On Sun, Nov 26, 2023, 07:36 Jude DaShiell <jdashiel@panix.com> wrote:
> >
> > > What's not on that videolan website is instructions for command line users
> > > giving format of vlcrc and valid items that can go in that vlcrc file.
> > > I installed mpv and vlc on archlinux and have mpv working since it's
> > > better documented but not the case with vlc.
> > >
> > >
> > > -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > > defense of liberty: soap, ballot, jury, and ammo. Please use in that
> > > order." Ed Howdershelt 1940.
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "
> > > blinux-list@redhat.com" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an
> > > email to blinux-list+unsubscribe@redhat.com.
> > >
> > >
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

