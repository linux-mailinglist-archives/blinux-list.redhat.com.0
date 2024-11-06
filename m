Return-Path: <blinux-list+bncBCL5FHHSVEIBBBERV64QMGQEDN7XKMA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FF99BF789
	for <lists+blinux-list@lfdr.de>; Wed,  6 Nov 2024 20:50:32 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-460dd04feecsf2787891cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 06 Nov 2024 11:50:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1730922629; cv=pass;
        d=google.com; s=arc-20240605;
        b=UlSBs3fsnBJAu+XXpjxUuaC6oiW4jhFPbE7KeHqXsa5mBTTCDSOG1Ni6Gu7zaSPDKN
         YIfUN1dD8ZZ52ME2XW5PgNugg2aAQWB1CbGZPpZGFVTnjACDoubplzKWR+JSg0UIOcg3
         aRCePSP+3ODy4vYpz9tKaZdIH3V66WsueRKtjYgrJFu56aWaxbo9EFVSsQgLmBTi8+P6
         a5EhI8owEecw4rsj1rsEIB43KEnkGSbTd+f4u+sysHiMR9IxjV5Rsx7EgGzZmFt2Wzll
         mMoQ6HJAS2RQo4opyo6rWOJ+Z0WRgTbXsB5iWxY5Q9SZeaxhw2riaduVurcb1aI5LxRJ
         +yPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:subject:user-agent:references
         :in-reply-to:message-id:date:to:from:delivered-to;
        bh=lVQVD4n7c7aWaudwk7/VSq0Id5wK9G6nVEFyE4Fihl4=;
        fh=N0xzMR+zHnPiStbK5UHY8bwDrzuDgTFK5UkGfBPs7/0=;
        b=g78FMmsJnwJZBWFUUkM6Fzzspn2N74BCIM5/sM0UDhXjbwMVXeHEYbRLHi5GYPf5UT
         xPbm/W94kDGMAjviZLB2KB1vY2ZA/3NTp+wp0iB43iJi2CcA45Qt8Io0VeQyl/xjxAiN
         b3Y165o6+OgPwRUnWlpoXM07t/LRGTdcY2FEhvCyoqdOanW1v4NI8yRUAXq89v6EsIuT
         Bbi5m2RvQC8gLwCGFkgnWMZZ95w540xeK+Ouj2jAYvjNn5NlhHEIqfaTbML624GUn/vt
         w28s5vIcOM5spFhpLYB2dA2pMj0IWy8KeHvG6xtGysydRmaXWpy5pdlPkZrZIcxB0qEd
         YqAA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.47 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730922629; x=1731527429;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :subject:user-agent:references:in-reply-to:message-id:date:to:from
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lVQVD4n7c7aWaudwk7/VSq0Id5wK9G6nVEFyE4Fihl4=;
        b=k7lrnvSUPE5rV7gFbtPwbwAYWLVm1Fuw7d6S2otufrEqMs7mjFk1YeRK04sOoiJYfS
         7SMHek/mHLh7vQx3IL7iSHM8aVAECiBhkZkKB4wXIN+7ItMhMGekDYSyE0Ns7DLjrhDK
         kNpbIzRT26NIck6fo1r8+zL0y4oESBFSxgJap8g82op9gOhJOjM25kAYxRg1zAWiavz9
         jd9KIcpg02aW1y6z/I50b8k7D5cyJLNZbU+D0z3Sb6XTBLvtK8/5caJ8e3psmshPmx1F
         G0kM4L31U3xS8IouOE+ZwDoyjyR1v5lGhJ99d0C6GDZkotkyJjdiGQhDnIcgzeG/kgkl
         wdEw==
X-Forwarded-Encrypted: i=2; AJvYcCVeWdJBIQ33tXWQcNAtdo0EaWPBmeEedcah9zFM8WgkJuCJpDz5Nj11FLLNlRfqkH9x5hbOsg==@lfdr.de
X-Gm-Message-State: AOJu0Yy04BmnzkAUh+jkDJxZ1ccNGXtEo7XI7I1rlSdqYzXS3yUaki2O
	ZR+7B8KEeNdV65bTbronIKwpM1c1lsTa7iW4EjgHHGRU621LRBpgML4KQXLO4wM=
X-Google-Smtp-Source: AGHT+IEpftkvuESnKgXySiwlpU5oOo+2Js/R1WlBAkw6uMWXxC4yxSPm/Ry+aDgPR88PG6gC5+CGyg==
X-Received: by 2002:a05:622a:1313:b0:460:7b6e:9475 with SMTP id d75a77b69052e-462ab23e9b1mr358522641cf.10.1730922629013;
        Wed, 06 Nov 2024 11:50:29 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:2303:b0:462:c59c:a884 with SMTP id
 d75a77b69052e-462fb3470aals1524071cf.2.-pod-prod-02-us; Wed, 06 Nov 2024
 11:50:28 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUN2a8gVBX6zBwNHq1S6GMepnJQx2V93bU11OZolsXNeOVYaTdHIIML4IegLroLs2ZeuTVjNKWHqWCh2w==@gapps.redhat.com
X-Received: by 2002:ac8:7fd0:0:b0:460:af80:ceb9 with SMTP id d75a77b69052e-462ab23ec4dmr337921981cf.4.1730922628115;
        Wed, 06 Nov 2024 11:50:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1730922628; cv=none;
        d=google.com; s=arc-20240605;
        b=Gy7MxEj7GE9rUisOj24Cn3XATel+2A/QVuNdPOXvrpeXHno1QtGswoNDOvmZ/nsp5R
         8Rh/awdNBirkLw6gJ2GFTp7ixxHv37J9KdwJ9SDGOa2qVbOLiO866Qa1zjO+PhxFysUN
         29N7RJar3HWStev8ohIw82OepGQjc4t+iZMiATNA0/huCKfWPhBkc2UjOrJDyM9jGvUS
         3ZLIwKIhxKBbtZeiPe2fAsKJGdcG0u693KG6GH7YIF/YMg9cBqn5jVWXlv9uRGxn8172
         B4/8UPxsFKACDkb8m2GZoxORPEX2swT58T/X2OX1ig0TBd6xl/QqWOwBgkKYnNMoUWvO
         dOZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:subject:user-agent:references:in-reply-to:message-id
         :date:to:from:delivered-to;
        bh=z2uTjlhuPe7zziZRz2dY1sYoIiD3wu9nhMmPMcOB1To=;
        fh=K2tkz09NfaF0bETdMBVA7vBBQ8u0qbFplnpdEH8ujiY=;
        b=ZFXIMXpQDHZHTLbRTuwe9tuFhCy7RMK/KUxiAwkdja0fz8HTS5cW7vrnXURcBe/Rjr
         hIL1Ms+GGr4TPtpDg7oGomoixUlJL0EFNPBck54TskWFaP9Aedry2DDFOcsQQ7BsDTHk
         pM7cV4JoTb8YRwpXPbOrjUDXBKMNgFu2TAKU0yP8KFsp/QuWVLttHxOtOhgl6JOrknXp
         v0dV0AkEq0vBI1cL610U1lgDAbOaYjkpCXwhgQJQeFN8sxe4ckozyOqYT97t0tL4zCJ9
         KM47e5ynOqgx7xVGgiR46CJXQqg6eX71jydm5tAqwcF7yiQU7emHZTmjk8j02Sg0WKkc
         5qAA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.47 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-462ad0b58d9si160294871cf.15.2024.11.06.11.50.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 11:50:28 -0800 (PST)
Received-SPF: pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.47 as permitted sender) client-ip=209.85.167.47;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-537--E-2vw11O7GQlDEfkyB00w-1; Wed,
 06 Nov 2024 14:50:26 -0500
X-MC-Unique: -E-2vw11O7GQlDEfkyB00w-1
X-Mimecast-MFC-AGG-ID: -E-2vw11O7GQlDEfkyB00w
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 029551956046
	for <blinux-list@gapps.redhat.com>; Wed,  6 Nov 2024 19:50:26 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id F1FDF1955F22; Wed,  6 Nov 2024 19:50:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EE92A1955F41
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 19:50:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 738611956046
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 19:50:25 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-227-JwNjAm0rNJSSeH5hRY7nsw-1; Wed, 06 Nov 2024 14:50:22 -0500
X-MC-Unique: JwNjAm0rNJSSeH5hRY7nsw-1
X-Mimecast-MFC-AGG-ID: JwNjAm0rNJSSeH5hRY7nsw
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539f0802bf1so7094e87.3
        for <blinux-list@redhat.com>; Wed, 06 Nov 2024 11:50:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVESPhroXWHGMiBy91MkXzGOD8GOV2p19keO3c9+SOS874lo4QGsN83nDupqyfrsNwCdwE+KGAWw08oaQ==@redhat.com
X-Received: by 2002:a05:6512:10d2:b0:536:a275:9d58 with SMTP id 2adb3069b0e04-53d819882c1mr62329e87.7.1730922619928;
        Wed, 06 Nov 2024 11:50:19 -0800 (PST)
Received: from [100.115.92.22] (m83-182-145-175.cust.tele2.se. [83.182.145.175])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bdd0423sm2585331e87.236.2024.11.06.11.50.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2024 11:50:18 -0800 (PST)
From: mattias jonsson <mjonsson1986@gmail.com>
To: Jude DaShiell <jdashiel@panix.com>, <blinux-list@redhat.com>
Date: Wed, 06 Nov 2024 20:50:14 +0100
Message-ID: <19303070cf0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
In-Reply-To: <48b60262-4cc5-39c5-7269-a6585c352296@panix.com>
References: <fd0ee2da-860d-5025-92c8-9f347530982b@panix.com>
 <193021c8db0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
 <48b60262-4cc5-39c5-7269-a6585c352296@panix.com>
User-Agent: AquaMail/1.53.0 (build: 105300523)
Subject: Re: chromebook and tdsr
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: WeaesdHGEyZT1OvGjnIuprpONTq0xgm7wfxteNXSwpE_1730922620
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: S5JjQFLx7K6Ni8TXMIZpMAoyOhrhMoDLNa59wBqK2uo_1730922626
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="19303070e35b56275e128e454"
X-Original-Sender: mjonsson1986@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mjonsson1986@gmail.com designates 209.85.167.47 as permitted
 sender) smtp.mailfrom=mjonsson1986@gmail.com
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

This is a multi-part message in MIME format.
--19303070e35b56275e128e454
Content-Type: text/plain; format=flowed; charset="UTF-8"

so how do you change tdsr settings
or do you prehaps dont use anny of tdsr commands


Den 6 november 2024 20:42:48 skrev Jude DaShiell <jdashiel@panix.com>:

> meta key?  chromebooks have no meta key.  They have a command key just
> above the shift key and I don't use it or need to use it when running
> tdsr.
>
> -- 
>  Jude <jdashiel at panix dot com>
>  "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo.
>  Please use in that order."
>  Ed Howdershelt 1940.
>
> On Wed, 6 Nov 2024, mattias jonsson wrote:
>
>> jude
>> how do you use the meta key for tdsr
>> you cant set the alt key as meta key?
>>
>>
>> Den 27 oktober 2024 18:50:32 skrev Jude DaShiell <jdashiel@panix.com>:
>>
>> > I'm using the package in the debian container environment with 96gb of
>> > space so it has enough room to swing a cat. tdsr for whatever reason needs
>> > to be started once the penguin shell is opened with chromevox turned off.
>> > For whatever reason so far the command to start tdsr cannot be appended to
>> > .bashrc without generating trace back errors.  My guess is the command
>> > just before the command to invoke tdsr needs a couple ampersands attached
>> > to its end so tdsr will only start after that command has run to its end.
>> > I've tried it other ways and had to power wash the chromebook to clear my
>> > mistakes.  If I can get the sound card to play a tone at the end of
>> > .bashrc execution that would be helpful too.  The shell comes up slowly
>> > even with chromevox disabled. I'm using an acer spin #713 I bought a few
>> > years ago since my main linux tower died and went to the recycler until I
>> > can go and buy a replacement for it.
>> >
>> > --
>> >  Jude <jdashiel at panix dot com>
>> >  "There are four boxes to be used in defense of liberty:
>> >  soap, ballot, jury, and ammo.
>> >  Please use in that order."
>> >  Ed Howdershelt 1940.
>> >
>> > To unsubscribe from this group and stop receiving emails from it, send an
>> > email to blinux-list+unsubscribe@redhat.com.
>> >
>>
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to blinux-list+unsubscribe@redhat.com.
>>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--19303070e35b56275e128e454
Content-Type: text/html; charset="UTF-8"

<html>
<head>
<meta http-equiv="Content-Type" content="text/html"/>
</head>
<body>
<div style="color: black;">
<p style="margin: 0 0 1em 0; color: black;">so how do you change tdsr settings<br>
or do you prehaps dont use anny of tdsr commands<br></p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">Den 6 november 2024 20:42:48 skrev Jude DaShiell &lt;jdashiel@panix.com&gt;:</p>
<blockquote type="cite" class="gmail_quote" style="margin: 0 0 0 0.75ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">meta key?&nbsp; chromebooks have no meta key.&nbsp; They have a command key just<br>
above the shift key and I don't use it or need to use it when running<br>
tdsr.</p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">-- <br>
Jude &lt;jdashiel at panix dot com&gt;<br>
"There are four boxes to be used in defense of liberty:<br>
soap, ballot, jury, and ammo.<br>
Please use in that order."<br>
Ed Howdershelt 1940.</p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">On Wed, 6 Nov 2024, mattias jonsson wrote:</p>
<blockquote type="cite" class="gmail_quote" style="margin: 0 0 0 0.75ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">jude<br>
how do you use the meta key for tdsr<br>
you cant set the alt key as meta key?<br></p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">Den 27 oktober 2024 18:50:32 skrev Jude DaShiell &lt;jdashiel@panix.com&gt;:</p>
<blockquote type="cite" class="gmail_quote" style="margin: 0 0 0 0.75ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">I'm using the package in the debian container environment with 96gb of<br>
space so it has enough room to swing a cat. tdsr for whatever reason needs<br>
to be started once the penguin shell is opened with chromevox turned off.<br>
For whatever reason so far the command to start tdsr cannot be appended to<br>
.bashrc without generating trace back errors.&nbsp; My guess is the command<br>
just before the command to invoke tdsr needs a couple ampersands attached<br>
to its end so tdsr will only start after that command has run to its end.<br>
I've tried it other ways and had to power wash the chromebook to clear my<br>
mistakes.&nbsp; If I can get the sound card to play a tone at the end of<br>
.bashrc execution that would be helpful too.&nbsp; The shell comes up slowly<br>
even with chromevox disabled. I'm using an acer spin #713 I bought a few<br>
years ago since my main linux tower died and went to the recycler until I<br>
can go and buy a replacement for it.</p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">--<br>
Jude &lt;jdashiel at panix dot com&gt;<br>
"There are four boxes to be used in defense of liberty:<br>
soap, ballot, jury, and ammo.<br>
Please use in that order."<br>
Ed Howdershelt 1940.</p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">To unsubscribe from this group and stop receiving emails from it, send an<br>
email to blinux-list+unsubscribe@redhat.com.</p>
</blockquote>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;"><br>
To unsubscribe from this group and stop receiving emails from it, send an<br>
email to blinux-list+unsubscribe@redhat.com.</p>
</blockquote>
</blockquote>
</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--19303070e35b56275e128e454--

