Return-Path: <blinux-list+bncBDP7P6HU4IERBBVS3S7AMGQED5GT6PY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C6DA636FF
	for <lists+blinux-list@lfdr.de>; Sun, 16 Mar 2025 19:31:36 +0100 (CET)
Received: by mail-lf1-f71.google.com with SMTP id 2adb3069b0e04-5498963ebc3sf1959852e87.0
        for <lists+blinux-list@lfdr.de>; Sun, 16 Mar 2025 11:31:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1742149896; cv=pass;
        d=google.com; s=arc-20240605;
        b=INYZDQ0XGgOIIxHev0gOTr8vs0BOMDyO3NMXlI7A7ltqBuYOdBvLGrztmwZo6leJsj
         laq0/NShGh5Qa63xwlEmSv1hDnNHdah5zXxkirKcAWEUhlSlSiWlp5ggGlVx7JJAFRmK
         VnAMgzm7Owk7xN8sIf/GxG3crywzOf7i5Wqr+/8WC94B/ftHug4rjMACRZjxpNbBZQ4q
         9+q6agdNKVcK1e3Wx3hnyZI5Aoq07qVb5v8aZ/eClB3IIzgzbp/ZZ1Xmi5WgdGbKeiwS
         TUhYAm0u3ClZNN85fcXgO/pxGmwIXMAuumBJtz/rNPzZxIc8ArqRcAp8RaqmzBeOqizN
         zhvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:cc:from:delivered-to;
        bh=m1a6oTLW0HfrEACJL6hgjpAxIK92YDtUbOh/Qi0lEiY=;
        fh=5yN2YVUrZoao64tKx6z/sUIuFSZ0fMGqwCTfmygDIgk=;
        b=D6UMIMpTjGRR3Ks8j41o+/p8I55xxznpQByzKxcCUYSXtj6U2wfhUy2C2VaMTvmZQs
         Lkmef3cItcVcYnX2SHe/QnmReWg0kW0QSDZ40SxJJqBtf7lC8ZnDOyTH622FmAJKZV+I
         ZTLcvDKjeNKOiwgSU6+dQQiYCmq377j5p2aV6yBcXkDvB/sGdcvXkIpQD6Neqpk7Tt//
         YFV/Qt76GXWHoDiU1nLGdMEaj8VKUGMOvR2HAlG9NlNphmqu5k5AOuHHq3LIEY+3snqV
         PgPBwbvYuvBfiRl9Kgy5hPOPd7Ck7TWAKOyXAGcTbVAvgtVHCExf4bO/UAobR1jmyhVA
         cMTA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.214 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742149896; x=1742754696;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:cc:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m1a6oTLW0HfrEACJL6hgjpAxIK92YDtUbOh/Qi0lEiY=;
        b=Js/kzyjlbzD4KuKEFSNmq/yLG6SmVVdRZhWUMvdd8+AnUn0Dw1toC80n9oqdo/3RvW
         gr4NBQI1c1McDv69i2do7VhIr/3SpnmBubs78zrAUteYeTQtrVIGiYaOoySsvlpu+Ki7
         jLoKRtYM/oJeWnBpsKwAH50ztsjIeXZuYVVBjnUZZR0w+rLRNEOdhQ44FMhmqVmLJgCP
         IWARxqIwMY8sFNy0RZ1zTEQtQAQ7nZyZuwGDxN1RXoPuAGmLeX5h5G992AUNBy1O1zW5
         TWk+dNX+AmFy6nj6GakqvatHNQS3RX0iaBQbjh/5R6bFaeHrglrBsgDeAF76SJF0UXdM
         Y9xA==
X-Forwarded-Encrypted: i=2; AJvYcCU/Mf3CsS6k/HsZdc0GvcdogC43J3a7A65InNwiNET1Pe/E5dXA74i+Gcu7PqaE4RsR4VNgWA==@lfdr.de
X-Gm-Message-State: AOJu0YxEYzXqc7A51whjBQLtpgNdPWXIFuelQ8ekr72mZh0qdsK4L7jB
	Zyajt/+a+Gg+Gu6tZ2h0QG2z1EEfTnzp5znUvQ3e4NpLNxvRGuV6qAm/gEHlU94=
X-Google-Smtp-Source: AGHT+IHEjgGhrszCd7bsnsRc1MuxaXBkTDn/EfiRRS6F7I+XZtdEZ+UpAplfYkrX5fQai+D6jK5+gw==
X-Received: by 2002:a05:6512:3d09:b0:549:8f24:b617 with SMTP id 2adb3069b0e04-549c38f19dbmr4638065e87.4.1742149895056;
        Sun, 16 Mar 2025 11:31:35 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=ARLLPALu5wZxl85Z8fr+YrGTQHgfGmbC5JzPrqguQbg5BZjG+Q==
Received: by 2002:a05:6512:38ce:b0:549:616c:cfca with SMTP id
 2adb3069b0e04-549b881a8b3ls766661e87.1.-pod-prod-07-eu; Sun, 16 Mar 2025
 11:31:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWlJBz7gsRoAUeNs3hKrdR0a7dZMTYTJIAPsy+ktg72FUnJGEf5jFgY7WwMApmSLYN0xS68+JwbHeRKZQ==@gapps.redhat.com
X-Received: by 2002:a05:6512:ac6:b0:549:792a:a382 with SMTP id 2adb3069b0e04-549c3989a87mr5248020e87.32.1742149892321;
        Sun, 16 Mar 2025 11:31:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1742149892; cv=none;
        d=google.com; s=arc-20240605;
        b=MmXCDVHDXEyBJ4hhr5MerW/cC9d9NJsJEHiyscXar0vUl1fwAiGhy03zlaKbqVgjqG
         rta/w7gVFWz6ENk3SJA7RPdE7kJ1Mab/GiA/Jr12atiyQP6yZpDtEL5EJHUte2NY0mdS
         LjNvnmN5lDsU1Yygobx9xLxAGETvwhLZzPi+ipLhqxbKDLFa7qan7owR5gXdJae2gbty
         Q73sIpTeZWU4RS+lpMuN2pvBugkoAB753J5ZPIRvXPDjAXrI8ADjqm21pVJKGN0VuRCV
         7qsUq9OJ3z/S7AevUHH2GMRHvnoGy5ohW8Kzf89K1djlxZLjv70xS2Gg9sC0QyVB1FAp
         A8ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:cc:from:delivered-to;
        bh=vI5fI4UY93zPSJdUICyHJfoQpmbGeOYqsdSIyCpqVZg=;
        fh=TvMZK4RWts+B26VTMoXiWdVzDs2caDGEv10y7yIe/js=;
        b=ixnudSgk8QbeooZSgocHc84hP9wwrGUhzjr0Y1Dyve2SCJ+zhOLSyHfkCCd6r8HSkn
         dcPHL3n59n+rK9z4RiNjEhPReagwHx2PvXa/1CEA7hVfGZY9KOViMuV0C2oqN5Ie2j0R
         D/OVu3bLxxaR7qH7ZMnarEzaM4g4lbZQdgpJNK+c8XhwZbh6jAlNTp5+ldtODNKiPOX3
         OqOPgB6NYrQcrU30wKZioRAg1rDbjdd4wOEskxpoL8HqJJrn7WmnYFWGnNvrNQP0ILS/
         mbFwgj9I1KGfNbABQOV8xC3/4ERJLH+zstTM5kyQVTXadOpb4cE0cUWtdHz1poHE+ipg
         iEsQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.214 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 38308e7fff4ca-30c3f0a25f2si48789611fa.82.2025.03.16.11.31.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Mar 2025 11:31:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.214 as permitted sender) client-ip=66.179.105.214;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-274-rTVU-ofROkC3WKuq6-1fzA-1; Sun,
 16 Mar 2025 14:31:29 -0400
X-MC-Unique: rTVU-ofROkC3WKuq6-1fzA-1
X-Mimecast-MFC-AGG-ID: rTVU-ofROkC3WKuq6-1fzA_1742149889
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E264B19560B6
	for <blinux-list@gapps.redhat.com>; Sun, 16 Mar 2025 18:31:28 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DBF7930001A2; Sun, 16 Mar 2025 18:31:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D926C30001A1
	for <blinux-list@redhat.com>; Sun, 16 Mar 2025 18:31:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 62328195609E
	for <blinux-list@redhat.com>; Sun, 16 Mar 2025 18:31:28 +0000 (UTC)
Received: from altprdrgo003.altice.prod.cloud.openwave.ai
 (altprdrgo003.altice.prod.cloud.openwave.ai [66.179.105.214]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-638-UMVz6K6OMbS25kzKyAenTQ-1; Sun,
 16 Mar 2025 14:31:26 -0400
X-MC-Unique: UMVz6K6OMbS25kzKyAenTQ-1
X-Mimecast-MFC-AGG-ID: UMVz6K6OMbS25kzKyAenTQ_1742149885
X-RG-VS-CS: clean
X-RG-VS-SC: 30
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 67C2358F009B4C94
X-RazorGate-Vade: dmFkZTFe1MajzQ7Jx+FjH9kYXsQ+zOBZWs5IfPF0MbBLHKyOds/QjrpS6CpSCyzcFzk3Bzdm7KaCnsVf1eJftMSLBJgA9nG49YNM/JhN2HM7fqrCZzdniRXvUTub4qkSLulcPT3M5Lh/G8F+lWFbxUWL9A0vsWE5obz45utURFen/mjAFpWJmXoHZhflvfS6GROlxgl5Wwm7TgqpkknvaTCzQzRz+s5iEFsVIF6h5MpT+BQFcNY9wbgQmNwv2qmZRwINCBkJ65JbwnkWUB490CZZSgykvKyH5c3ADYo1cqqTAa5hyPHD5anBqrlAuh1/YKQDbci6D9d3S54cO7i21DXuK55DiO6dODfbOfjD9RByIiHgFxSlBdGmaiV+B6XOygZjOwDsgdqiaKbEThmEu+XLmz/bRQ0R3rIM9OA+CGB//WAjxbLTCaDuxFW5L6mVVpwrBm2P0PUmNLKK5Mqr0c2WWB5O2AHcwnWmltm7ATLyh0Am6Mq1T+FeL+Jm61tvPOCYCk0AF6Jnn2tyxk6RVvpPlxQ2j48bS4XD43Js/EKKW/ACYVthMTqB0jCxxM3smQS/+Vm2Sl0o0O87KTzBOJwUIkznqvpaz14PxH1jdC/KLolQ0w/H87VbFPhYN9G3CEYhDX7a8TqooKcYTnho8u+LOQpy8JnLtQIEeIhNCz79zjx3xQ
X-RazorGate-Vade-Verdict: clean 30
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo003.altice.prod.cloud.openwave.ai (authenticated as martin.m@suddenlink.net)
        id 67C2358F009B4C94 for blinux-list@redhat.com; Sun, 16 Mar 2025 14:31:25 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1ttslb-000O4J-1m
	for blinux-list@redhat.com;
	Sun, 16 Mar 2025 13:31:19 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: firefox or chromium Capturing A Table to a Text File
In-reply-to: <Z9byZpI1w_r3jNYU@panix.com>
References: <E1ttmRL-000ND0-2x@wb5agz> <Z9byZpI1w_r3jNYU@panix.com>
Comments: In-reply-to Rudy Vener <salt@panix.com>
   message dated "Sun, 16 Mar 2025 11:46:46 -0400."
MIME-Version: 1.0
Date: Sun, 16 Mar 2025 13:31:19 -0500
Message-Id: <E1ttslb-000O4J-1m@wb5agz>
X-Mimecast-MFC-PROC-ID: y4M4h_vy10F7A7x6PY2FL-X1AXWws5K7cu-o0wyyq0I_1742149885
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 2
X-Mimecast-MFC-PROC-ID: T1PhX_tgnMFiVn8RFZrZ9Bh0e2dMwGTxhtH3iPXKQgg_1742149889
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <92521.1742149879.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 66.179.105.214 as permitted
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

Thank you.  I am familiar with that technique from lynx searches.
Sometimes you find a tmp  file from lynx when one is listening to
something.  That long name is what you get from the mktemp
function so I will give that a try if there isn't anything else
Rudy Vener <salt@panix.com> writes:
> You could try locating the temporary files containing the rendered data 
> created by firefox.
> First create a script containing the command
> 
> grep -l "some.*unique.*string.*in.*the.*display" *
> 
> Call this script stringhunt.
> Then cd to locations where firefox may be creating its tmp files, such as 
> /tmp for example
> and run stringhunt.
> 
> If you get a filename,  run stringhunt > ~/myfile
> 
> Now myfile contains the name of the rendered temp file which will 
> probably be long, complicated andtotally meaningless.
> 
> If this actually works you can manipulate the file, examine it or edit it 
> with something like
> vi $(cat ~/myfile)
> or other tools to try extracting the actual data.
> 
> On the other hand this might not work because I haven't a clue if firefox 
> even creates temp files of rendered text.
> For all I know it is all done in RAM and no files are created.
> 
> Good luck, and may the farce be with you.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

