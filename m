Return-Path: <blinux-list+bncBCL5FHHSVEIBBKMXV64QMGQEUUWYZHI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 6112B9BF7BF
	for <lists+blinux-list@lfdr.de>; Wed,  6 Nov 2024 21:03:55 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4612f6f4fd8sf2513031cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 06 Nov 2024 12:03:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1730923434; cv=pass;
        d=google.com; s=arc-20240605;
        b=W+U57cLofjykNPa54UB7pA8r1QYsYrl/5dkrxDn1HHFS+BjQ8UMaKEsao3H8TILjK3
         f4D5IOvn8xkgA/tEtTyxtE34GRPclRI5Qft7TLEz9DMKZqhILTlgVdHjnc1aobAE2+CX
         bNGUbWrywnoLpLrbXR+17gaSGgMeArb6SGfCjSkBuozV8vCFFukN3vhhatGMN2BgAiAB
         pKhnO9T9Y34cSNuSrFREY9t/7nxtg578hKClwfTHv6PSKi3NGyZAyPoiVlKRSLOSgR+A
         MPcD6lEBV1kfrMfwr7vUiSUcql6h4qoGa0wuuHSUZgcbmMg2l7RAzF4XbaiCpWPIMFxu
         7N3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:subject:user-agent:references
         :in-reply-to:message-id:date:to:from:delivered-to;
        bh=KMXWqe+YLLp6+J+/5rZGIJiWFdst15lolohxlvfzgzY=;
        fh=kaCyv2wI4wgRI+k/PIwsDd1DpF/8zolppTaE9HwEWMc=;
        b=Z71EUoAKGT+Yh7Emvb7anV2S/Dzu9ZusE5NoPUTVimB5FU3e4jxZy67rWRKbUfbj+6
         U9puYnv7otTwmT9bOmTTHaOLbrCbxrufEVzQGxgQC9Ce1vEGJWT2wVl3tmBp+d37Oa4T
         pY58rIEZxrFeORD07IGSmkHBw7w15uOEzdIU/J1MMtl+XhWvwJfs1stF2VlYnJ8nKtPV
         Vwlg/Oj8gu5rLk2fFm6IRSM0GnFMjFDHp+DBXPANOAj2nvUmxOFqn+bHTZrNgE2+HZjL
         CkNBVxtT6wYwvuYH47KhxcH3X9JPtFFSiXPC2a9RL0U350OMrsLCjMEL4iBiya0YJvuf
         +51g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.208.169 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730923434; x=1731528234;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :subject:user-agent:references:in-reply-to:message-id:date:to:from
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KMXWqe+YLLp6+J+/5rZGIJiWFdst15lolohxlvfzgzY=;
        b=tYpxGOdbOrYTwZSq3wkkNUb9MVxXnY81ALjXJiiKebvs2+gHW+5+cKnCZRV88tzJZe
         2aHQbtG1xF0+jM0wiW4px/OoWdDiOCBiM8ERFCqJdtatkMvSj88BFVCa69nuifh3gCn3
         fhn7YA8e/j5/FJrpNtl91UUMZuwO7KtCjm8y7fAoEZ2tloypfWnqCrQLwR/VJujaChOT
         H+I3VMvMUCzrV2Hu0JzOb3L9v9KMndx9f0Ckd23RATVNlCI7Z2QUMj+jjXbYNaUeowh2
         9GisyxERNZK5SUIvm6f/KL5msxOB2EErmsrMljW3o/N8dk5yAcaFEJj6IommoWWDPulE
         3RXw==
X-Forwarded-Encrypted: i=2; AJvYcCVEvW9lDiPNxdPeYEUDvO9N7Ppl7QFm4oIYQ0Ooe4aXF3LuPZA7gdYKLjPWSuPURGVYBVmrhg==@lfdr.de
X-Gm-Message-State: AOJu0YyUG7lZuBLvMy3yDbBQl/9Z7q5mYOnkVJEr9XPRMalZdZyuIw59
	oQzYZou4lnMEkcARYqkvRoaIldBZSl+aoPv5Gm8XZqburhjEvXsJGhV0C1GEt4A=
X-Google-Smtp-Source: AGHT+IHsAWTZPhyX0IdTg9Y+V95wMbiKz5td8PKxnvhaLTgkWq3SBZ8J10OQ54UWe6IQRlpKhCn2tg==
X-Received: by 2002:a05:622a:5ca:b0:45f:788:b1ad with SMTP id d75a77b69052e-462b869d80emr349153311cf.27.1730923433845;
        Wed, 06 Nov 2024 12:03:53 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:5a14:b0:460:e9a4:81fc with SMTP id
 d75a77b69052e-462fb344c24ls1688921cf.2.-pod-prod-06-us; Wed, 06 Nov 2024
 12:03:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWCcrSxIAY1uGMlQa3Okj8GaV6bEtyIdYpjJ4Ajj2Hyc0jVVZ/329ZhiM7d6UEY56cXPzKspeOT0whOaQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:3184:b0:7b1:56f0:e06f with SMTP id af79cd13be357-7b2fb962bffmr2872211385a.15.1730923432809;
        Wed, 06 Nov 2024 12:03:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1730923432; cv=none;
        d=google.com; s=arc-20240605;
        b=Me67lmpbuTif+ce2SdnMgUfcWWwgudghX2ZLpnelNuLwtEEx2bxz0QXHEM8nnkqml+
         5hPKQb3xakafyFVZFr7IHzJRJg9mqgTyjg3WsP5kLP9p6unv+NTNpzt1+kLY3w3/8qmX
         MZH3202PrivykTZu4bMpSIbMxSlkBInlYi5onORVW8D6+gwsI4YlCVC4ECsmfzz0dD5L
         bQ+Ini/NHCEy51UcC0gOjlOLVdXZSbAbOBRZo3tde29DC2blPL20Ep3aUOythu46x9kw
         Vv1iQquaNRomqGRq5PL8rvXhQ8ydnM6qGW7qgVsWI0IGpRIN1AMXfMLrDSXDsCjZl0Vr
         w+FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:subject:user-agent:references:in-reply-to:message-id
         :date:to:from:delivered-to;
        bh=Ao9BkMzR4rf8q4qVYEZGdg/219QEOU0q8XDoYIwrf7A=;
        fh=V0r4zyVJ3m7R7XHR5J0ucZz4e4qrVQcLlzO/AAGN/88=;
        b=Jl4HCT6rS8DWPKpI65mwpCQdbifgh4yGw4Ya5hJyA4nntdnF6QpLL6Zas7RUHLKMkE
         8IMyMw08gvI047HcRYD6XDi/U2WuFZdo6OUe2eOsHiQLIeE12iY6jKrIVT2VRQpL/YVF
         99KTscdet0v0ME7IvXcTYb7FfhH2CQBSq5lmj0dMOzIpLcti8qogG6dK8AOQsNlR5NM4
         dl8uYK6r237o9flrb8J/OGrAIP922wnWeHqNKorm1hVapovkPvfP+oSW/RcBPVGEKLTc
         YQbN1pUze+71iR31FG4ZoBkpGHxB7WL6nvi9ia6Q77VGG6BUeaeo+w23mYMI5KrrEryw
         f1KA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.208.169 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b2f39f1cdfsi1681263585a.32.2024.11.06.12.03.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 12:03:52 -0800 (PST)
Received-SPF: pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.208.169 as permitted sender) client-ip=209.85.208.169;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-63-9G9T_rpkNG-mxbjLlTE-AA-1; Wed,
 06 Nov 2024 15:03:50 -0500
X-MC-Unique: 9G9T_rpkNG-mxbjLlTE-AA-1
X-Mimecast-MFC-AGG-ID: 9G9T_rpkNG-mxbjLlTE-AA
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7CE5A1955F56
	for <blinux-list@gapps.redhat.com>; Wed,  6 Nov 2024 20:03:49 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 77EB0195DF81; Wed,  6 Nov 2024 20:03:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7510019541A6
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 20:03:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0EFE519560B4
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 20:03:49 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-648-JgeIKCSeOvy5DEyxsaCwMg-1; Wed, 06 Nov 2024 15:03:46 -0500
X-MC-Unique: JgeIKCSeOvy5DEyxsaCwMg-1
X-Mimecast-MFC-AGG-ID: JgeIKCSeOvy5DEyxsaCwMg
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2fb4ba73464so219901fa.1
        for <blinux-list@redhat.com>; Wed, 06 Nov 2024 12:03:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUTMC1f+2y+paeFVB30MCUmnUsWSR0qMmM269AZKgonaXjvviLbKRe5TD73fFe4AGk7kIhxrrDbHAPbzA==@redhat.com
X-Received: by 2002:a2e:ab08:0:b0:2fa:d1f9:9fb9 with SMTP id 38308e7fff4ca-2ff1472eb79mr1312141fa.2.1730923424571;
        Wed, 06 Nov 2024 12:03:44 -0800 (PST)
Received: from [100.115.92.22] (m83-182-145-175.cust.tele2.se. [83.182.145.175])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fdef8a647fsm25580181fa.77.2024.11.06.12.03.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2024 12:03:43 -0800 (PST)
From: mattias jonsson <mjonsson1986@gmail.com>
To: Jude DaShiell <jdashiel@panix.com>, <blinux-list@redhat.com>
Date: Wed, 06 Nov 2024 21:03:39 +0100
Message-ID: <19303135578.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
In-Reply-To: <f60bd839-7cec-7003-65e9-76e5a8fc5a90@panix.com>
References: <fd0ee2da-860d-5025-92c8-9f347530982b@panix.com>
 <193021c8db0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
 <48b60262-4cc5-39c5-7269-a6585c352296@panix.com>
 <19303070cf0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
 <f60bd839-7cec-7003-65e9-76e5a8fc5a90@panix.com>
User-Agent: AquaMail/1.53.0 (build: 105300523)
Subject: Re: chromebook and tdsr
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: eu23JJDmaXnIRV-5pwWTyuf3mVpMlJwQAced1d0MGUo_1730923425
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 2cumkjSVyB3pSGIevLrkucNTvpZkhgCnE3Pz80r9CJs_1730923429
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="193031357b8b56275eb6b3ffc"
X-Original-Sender: mjonsson1986@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mjonsson1986@gmail.com designates 209.85.208.169 as permitted
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
--193031357b8b56275eb6b3ffc
Content-Type: text/plain; format=flowed; charset="UTF-8"

yes i found the alt works without config anyting
on mac it dont


Den 6 november 2024 20:54:43 skrev Jude DaShiell <jdashiel@panix.com>:

> I use tdsr commands regularly.  The details are in readme.md in the tdsr
> directory.
>
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
>> so how do you change tdsr settings
>> or do you prehaps dont use anny of tdsr commands
>>
>>
>> Den 6 november 2024 20:42:48 skrev Jude DaShiell <jdashiel@panix.com>:
>>
>> > meta key?  chromebooks have no meta key.  They have a command key just
>> > above the shift key and I don't use it or need to use it when running
>> > tdsr.
>> >
>> > --
>> >  Jude <jdashiel at panix dot com>
>> >  "There are four boxes to be used in defense of liberty:
>> >  soap, ballot, jury, and ammo.
>> >  Please use in that order."
>> >  Ed Howdershelt 1940.
>> >
>> > On Wed, 6 Nov 2024, mattias jonsson wrote:
>> >
>> >> jude
>> >> how do you use the meta key for tdsr
>> >> you cant set the alt key as meta key?
>> >>
>> >>
>> >> Den 27 oktober 2024 18:50:32 skrev Jude DaShiell <jdashiel@panix.com>:
>> >>
>> >> > I'm using the package in the debian container environment with 96gb of
>> >> > space so it has enough room to swing a cat. tdsr for whatever reason
>> >> > needs
>> >> > to be started once the penguin shell is opened with chromevox turned off.
>> >> > For whatever reason so far the command to start tdsr cannot be appended
>> >> > to
>> >> > .bashrc without generating trace back errors.  My guess is the command
>> >> > just before the command to invoke tdsr needs a couple ampersands attached
>> >> > to its end so tdsr will only start after that command has run to its end.
>> >> > I've tried it other ways and had to power wash the chromebook to clear my
>> >> > mistakes.  If I can get the sound card to play a tone at the end of
>> >> > .bashrc execution that would be helpful too.  The shell comes up slowly
>> >> > even with chromevox disabled. I'm using an acer spin #713 I bought a few
>> >> > years ago since my main linux tower died and went to the recycler until I
>> >> > can go and buy a replacement for it.
>> >> >
>> >> > --
>> >> >  Jude <jdashiel at panix dot com>
>> >> >  "There are four boxes to be used in defense of liberty:
>> >> >  soap, ballot, jury, and ammo.
>> >> >  Please use in that order."
>> >> >  Ed Howdershelt 1940.
>> >> >
>> >> > To unsubscribe from this group and stop receiving emails from it, send an
>> >> > email to blinux-list+unsubscribe@redhat.com.
>> >> >
>> >>
>> >> To unsubscribe from this group and stop receiving emails from it, send an
>> >> email to blinux-list+unsubscribe@redhat.com.
>> >>
>>
>>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--193031357b8b56275eb6b3ffc
Content-Type: text/html; charset="UTF-8"

<html>
<head>
<meta http-equiv="Content-Type" content="text/html"/>
</head>
<body>
<div style="color: black;">
<p style="margin: 0 0 1em 0; color: black;">yes i found the alt works without config anyting<br>
on mac it dont<br></p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">Den 6 november 2024 20:54:43 skrev Jude DaShiell &lt;jdashiel@panix.com&gt;:</p>
<blockquote type="cite" class="gmail_quote" style="margin: 0 0 0 0.75ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">I use tdsr commands regularly.&nbsp; The details are in readme.md in the tdsr<br>
directory.<br></p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">--<br>
Jude &lt;jdashiel at panix dot com&gt;<br>
"There are four boxes to be used in defense of liberty:<br>
soap, ballot, jury, and ammo.<br>
Please use in that order."<br>
Ed Howdershelt 1940.</p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">On Wed, 6 Nov 2024, mattias jonsson wrote:</p>
<blockquote type="cite" class="gmail_quote" style="margin: 0 0 0 0.75ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">so how do you change tdsr settings<br>
or do you prehaps dont use anny of tdsr commands<br></p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">Den 6 november 2024 20:42:48 skrev Jude DaShiell &lt;jdashiel@panix.com&gt;:</p>
<blockquote type="cite" class="gmail_quote" style="margin: 0 0 0 0.75ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">meta key?&nbsp; chromebooks have no meta key.&nbsp; They have a command key just<br>
above the shift key and I don't use it or need to use it when running<br>
tdsr.</p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">--<br>
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
space so it has enough room to swing a cat. tdsr for whatever reason<br>
needs<br>
to be started once the penguin shell is opened with chromevox turned off.<br>
For whatever reason so far the command to start tdsr cannot be appended<br>
to<br>
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
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;"></p>
</blockquote>
</blockquote>
</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--193031357b8b56275eb6b3ffc--

