Return-Path: <blinux-list+bncBDAPZGHUUMBRBJ6ATG6AMGQEGTFCMQI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BDFA1073E
	for <lists+blinux-list@lfdr.de>; Tue, 14 Jan 2025 14:01:29 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8844560e9sf116518446d6.3
        for <lists+blinux-list@lfdr.de>; Tue, 14 Jan 2025 05:01:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736859688; cv=pass;
        d=google.com; s=arc-20240605;
        b=HubpfJvEZxjeZ7u3l9a+vP18EBUB0YM0wGFieUzbwoJ1mV9ehd7ov9gZHKOa0Kk7Yh
         AW4/Kk1XmAd3CtRL+ieRvg+3qfUBveqY/InvWEGBC4DOiR+jo1/PhXcu0nvxXiwFXFHU
         LxNDeeVQoh0CkU+GUUcgfDaIdVx2CKLEHyV/cnynIK7scbHjDuKSExTb8i+yiV6qiHrB
         FOGTVtat2J2VHS0iy1WxHiV/0d08dWZwjCNidu/Jz2H60OpJl8yQ1UatgYyWRRuNKtvA
         LH7M9NDhm/2BvXBX2t44jNrt6rT8ca/XCJ223zDiKnV1or0sarNBSfoP561nFSwtLECi
         37QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:user-agent:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :delivered-to;
        bh=PAUtbVXMg0QIYQuAIR7uIarcZhMG0f0KenklYZgkqAQ=;
        fh=yk/MursIB6NEAoYrA2jd8om9NWoSwMLvhkH5Cp/5oQc=;
        b=WbaOnRw8sXcl7IEhjOqPJ0JtRZoIq9BtaUuXuJbqtYjO+ZT7watiNMdJauR41uQmWs
         N8dSLJC2+6rL/4C8Kw2ggN67wrZ8zU8Mvf1C7VG2mYuwfHWZyO7OqPzf/JXMGCUYTHwy
         ToaRF0cfKrD7vJUWapwg8Ddtg/cMKXJKemtOQcOdfk7EhOh2NaJMjdr/nA1bErNZgL9s
         /0e8V9NrPfMZqp55+trkdT0NnEjiwl+3FNd5TunXH4Eb5WYs6vm1JWQZD6ytccW6sMFX
         anH/x5XFk/Mh/NHRHJd4xdbC3xSbJA6w/jGfsAyo39A8nMVAScH0zNQNL0A1UBENLZYy
         xO1w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.52 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736859688; x=1737464488;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PAUtbVXMg0QIYQuAIR7uIarcZhMG0f0KenklYZgkqAQ=;
        b=abvHLiRJh1Mqj0SnKFCYZ+GUU5j2FZKjSGqmPtCbUekWHiXToYioiK482N5PTOuTE1
         d0sZ93oyPIi/SkaT8cRK2OCXX0nCWHuGVGhcNicIJWSw5lgo3b7KB5vgw9r0NfkJ3iVW
         4QOacUagKHPf1RGY9kO+7af2bIrSI5EyJyTryATKdsyLhXa8p820s8Cq5tAyOTQXPHLN
         NynbP+fLlEoBKTAX5GZE14fnprJ6rglaIkm16PULbyVrcQ4a9KXveAehdBOgDpNqr0ZF
         byLYdL88Ru8H3pLjAPcY1QnX6jpN9Qh82YP+bvJpFgfecYpd/1JZxfOY9E+d2FPOygXd
         6HdQ==
X-Forwarded-Encrypted: i=2; AJvYcCXjuySonALDkBm9qEcLSYNmZs4Kldji7W2St8LuPRLqwf2BMRzg4cVJEnPtwMYIfHx7Ars5tg==@lfdr.de
X-Gm-Message-State: AOJu0YxZqOQEuVDkY0FsuX+8lbMYRqpbFETzje87jll4tNSXhmKZLUtY
	vt8JVLG3cIh9a2PhUfEX3YV85rPOiIKRcMNx2ZHS0+Rv9mpBJAZPzZ03UDESoys=
X-Google-Smtp-Source: AGHT+IEESABFuAwNhWPFxjsQH1+ElStAJuqz8EFMH+AD5COVxC7uWG6k9hrrdnTmMspwJNMhBmhu/A==
X-Received: by 2002:ad4:5d64:0:b0:6d8:d79c:1cbd with SMTP id 6a1803df08f44-6df9b238518mr402828046d6.15.1736859688098;
        Tue, 14 Jan 2025 05:01:28 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5786:b0:6dd:1724:e378 with SMTP id
 6a1803df08f44-6dfa3828844ls105245686d6.2.-pod-prod-06-us; Tue, 14 Jan 2025
 05:01:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUnBEWXzDkAjOXpKOVVdlnMCq1tspHaOmGPmf+VGqSL5SLBJMTF+IDu7OszwZoT7hlIy7hZjBpn5CV1Iw==@gapps.redhat.com
X-Received: by 2002:a05:6122:3128:b0:518:7777:a61e with SMTP id 71dfb90a1353d-51c6c464ec6mr19203176e0c.5.1736859686700;
        Tue, 14 Jan 2025 05:01:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736859686; cv=none;
        d=google.com; s=arc-20240605;
        b=Ca562idvj8nzl+sxHJ9yWpP7uo60WA0Cfl9PKZkYnT8vcAsg6vrEGjs+UEN6FP/pXG
         PXuaec9bekHojirrrC2LzuJZuq25NkBBMp1c/5VLl6oPPbB/So4hC7Jg/P5DpyYiUYzs
         vu1Tb1IRsy8wXXO2Ob3yXG165HRIZuHM3yI86ixmFYccMTh64vLWBdg/iRDX+f6TtOGj
         DbwE1PNQakqgnn78hlOc/ayM1MbymYMo+7XNhInRYMOwRwf/wC77uAW5D5iKa19KJSM4
         RJ095plfW/8j22lwuxzsahCsPK0gBukiPWAbCrb4RWfQIzhXeWLizNnFyKIFHrTwDfK9
         //Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:cc:to:from:date:delivered-to;
        bh=fXifXYIAUPx7ukQPKU1m/3Fvwm9YnYMFV8QKZ9mOPPM=;
        fh=DqVZjDbBUhx02g9781Za5qPpNthXuDamXUiV/I8BoJM=;
        b=jk10ams75LqF3r083E7+3HZOyM6Armf6DjtC1DRonY5iCyEdRQHR9mdV+VBt+UtSJE
         bIv1/q+JlAV+ek959d01fkZRgth9gSCm5T/iqINgIGUyFI/TzA6iM+H5MUAwvfXt6m7X
         fsY1zwNGDje2aWa/86oGf2XVzZJ04Gjfgyul3CgyXZaAC5R5Lxbu64ru6lNFWzZ/uDx+
         lczCVorVGJcs4aPJ7Ab0RbVhjC/PBMkbDNNNY0vAskAVwZ7nf8R5UmTFLe+q2DWGd+G9
         1I6EvebNaQxo4ZPG/wYc7qQNSxrP5+qUfRqBeBPP9a2nfcY8e7jPq9jzgxAqor7x3NGY
         gdWA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.52 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 71dfb90a1353d-51c7fba1ac9si4062130e0c.25.2025.01.14.05.01.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 05:01:26 -0800 (PST)
Received-SPF: pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.52 as permitted sender) client-ip=209.85.167.52;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-328-z8ZiGJLzO0CtXjLNrkULDg-1; Tue,
 14 Jan 2025 08:01:24 -0500
X-MC-Unique: z8ZiGJLzO0CtXjLNrkULDg-1
X-Mimecast-MFC-AGG-ID: z8ZiGJLzO0CtXjLNrkULDg
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0FC2D1955BDF
	for <blinux-list@gapps.redhat.com>; Tue, 14 Jan 2025 13:01:22 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0B3F019560A3; Tue, 14 Jan 2025 13:01:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 08978195608E
	for <blinux-list@redhat.com>; Tue, 14 Jan 2025 13:01:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9C0681954196
	for <blinux-list@redhat.com>; Tue, 14 Jan 2025 13:01:21 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-139--4kfgusTNDio1C0T5Nt7iw-1; Tue, 14 Jan 2025 08:01:17 -0500
X-MC-Unique: -4kfgusTNDio1C0T5Nt7iw-1
X-Mimecast-MFC-AGG-ID: -4kfgusTNDio1C0T5Nt7iw
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5401c52000fso4642898e87.2
        for <blinux-list@redhat.com>; Tue, 14 Jan 2025 05:01:16 -0800 (PST)
X-Gm-Gg: ASbGncssuOTZn5jFo0h5zqOJDSILHXR1VDKaXaelIRQk5rOooj2zYmR1GSBUhyUeDPU
	+3j8UJIByI57SHgMpEe0UoOd+OKaQ4lIWJRpP3Lc/+RwNzwxjT0rM8cs9TxThsxELeuEEqm7Oel
	UUA8e9/o5LPa++RQCIV7nu9gIezEuU2Tc+GmMLVkb3XlgCg3cYg7q8KnlgTa/qOf43/875y1/Ph
	y/GD11dMCwUPjHpE4ZBOBsUoqvqOdJ78Zbfy1GYbpyWxeUvAXP/KuaeF5SPZ2Vs81sYF3QMKHua
	C45P4M8Opqwyhu4qkEk=
X-Received: by 2002:a05:6512:350f:b0:542:87c5:66da with SMTP id 2adb3069b0e04-54287c58e75mr6483620e87.37.1736859673536;
        Tue, 14 Jan 2025 05:01:13 -0800 (PST)
Received: from localhost (broadband-77-37-216-184.ip.moscow.rt.ru. [77.37.216.184])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bec07ccsm1718629e87.202.2025.01.14.05.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 05:01:12 -0800 (PST)
Date: Tue, 14 Jan 2025 16:01:11 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: Didier Spaier <didier@slint.fr>
Cc: blinux-list@redhat.com, orca@freelists.org
Subject: Re: List problems and a suggestion
Message-ID: <fesoxhx7g5kob6t4gmu54mwcglavzqg3hnvn6nbxm7om4phbfo@aclcfl3xj4op>
References: <MTAwMDA0MS5jbHVs.1736523986@quikprotect>
 <8e04abaf-e64f-4d80-b2b7-8870d0eb5429@slint.fr>
MIME-Version: 1.0
In-Reply-To: <8e04abaf-e64f-4d80-b2b7-8870d0eb5429@slint.fr>
User-Agent: NeoMutt/20250109-dirty
X-Mimecast-MFC-PROC-ID: 0mlQfI-1IAQlAuybIbURF8VFpjrhYFcYMUdBbj0H9zQ_1736859676
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: UhYRilrq4ScKQBMCvJiCPDvu-F_clBHgNa4f6M0mH5Q_1736859682
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: aarnaarn2@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of aarnaarn2@gmail.com designates 209.85.167.52 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
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

Hello. blinux@freelists.org created and ready to help you communicate.

you can join list by sending email to blinux-request@freelists.org
with 'subscribe' in the Subject field OR by
visiting list page at <https://www.freelists.org/list/blinux>.

Online, searchable archives of the list are available at
<https://www.freelists.org/archive/blinux>.

I would be very grateful if you could forward this message to any interested communities.

On Fri, Jan 10, 2025 at 11:00:58PM +0100, Didier Spaier wrote:
> It's me who suggested to create another list to replace this one:
>
> Let me quote my post about that:
>
> On 06/12/2024 22:36, 'Didier Spaier' via blinux-list@redhat.com wrote:
> > Thanks Chime,
> >
> > unfortunately this information is rather old, thus many of the links it provides
> > are dead.
> >
> > Unfortunately the blinux list is only partially usable and provides not recent
> > archives. Fortunately the is one here instead:
> > https://www.spinics.net/lists/blinux/
> >
> > I think it's about time to cease to use the blinux list that seem to be
> > under-managed if not no more managed and replace it by one that could be hosted
> > @ freelists.org as is the orca mailing list, which is free with good records.
> >
> > @All, what do you think?
> >
> > Is there a volunteer to register then maintain a list like blinux@freelists.org
> > replacing blinux-list@redhat.com?
> >
> > If no one volunteer to do that within a week or so I could do it, unless someone
> > objects or have another proposal.
>
> Then Alex volunteered:
>
> On 07/12/2024 16:13, Alexander Epaneshnikov (aarnaarn2) wrote:
> > Hello. I think I could create and administer such list.
>
> But he did not create this list so far to my knowledge.
>
> @Alex: please tell us if you still intend to create this list.
>
> If you don't, I will create it next week and post a message here and in similar
> lists when done telling how to subscribe to the new list and manage the
> subscription which can be done by emails exchange without needing to use a web
> browser.
>
> After that I won't mind that someone else (possibly Alexander) takes over the
> ownership of / admin this list once created.
>
> Links to provide more information about freelists.org:
> https://www.freelists.org/help/
>
> Cheers,
> Didier
> --
> Didier Spaier
> didieratslintdotfr
>
>
> On 10/01/2025 16:46, 'Cleverson Casarin Uliana' via blinux-list@redhat.com wrote:
> > Hi, I'm about to retire this e-mail address which is subscribed to this group.
> > I'm unable to do any operation such as unsubscribe this e-mail, subscribe
> > another one, or even turn vacation mode on.
> >
> > I recall someone suggested to create another group to replace this one. That
> > would be good for me too, though I believe another option is you all subscribe
> > to a group like Stormux at groups.io, and use that for general discussions.
> >
> > I prefer not to risk creating an alternative group, because I've never
> > administered a group, so I'd probably be too amateur at that.
> >
> > Regards,
> > Cleverson
>
>

--
Sincerely, Alexander

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

