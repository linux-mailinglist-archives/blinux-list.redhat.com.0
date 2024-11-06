Return-Path: <blinux-list+bncBDYPVTOXSQEBBCETV64QMGQETV46VJQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C46E9BF7A5
	for <lists+blinux-list@lfdr.de>; Wed,  6 Nov 2024 20:54:50 +0100 (CET)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-288c2c2b5bbsf158937fac.1
        for <lists+blinux-list@lfdr.de>; Wed, 06 Nov 2024 11:54:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1730922889; cv=pass;
        d=google.com; s=arc-20240605;
        b=iSxskUUmJlnCVTIVYH6aJ/mjcP4dUNT8vesXU4A2iQhMZkOr842ZKmLWjL4M2BVaqa
         kwJnNZg3SixYHfWvrxGOr1MERUOCXebT7CEhf+RXEDsAuldHDeNp31+jmrkjykfnhGYe
         lx61ISkxVyJtXBrWcGSKtwxylAjIe9slPfMNSW5wYQPcnfoXBRqRvhhXPLP4tWC/fR1b
         1qLo0ujm3F3F5XxixJ2aqQYqqzDf4htWMq7SCtZVyXkY1D+6NV2qlufNoTTbMHX2/t5D
         595iIqTwrYLS94Yp3XHnT0Ded7IyoxY80MFRu8biH0waPlwENu2VexZKKniAZUPFmXeW
         qRiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=GZo0N10rAGJSd3tRJ9ufx2C66rpWR8vYxYUANVd3GB0=;
        fh=dK6ZI/JmxrbwJ6XSA70obpfGcyZhXf18SUseIoXJ4Zk=;
        b=XCzd8qRD1gWGnKglBqBVcro86+KBfbnmacNURsl+WokGP9torKsq5Y6wRimW2IIgfm
         fEwXm/KwNotTZWnm0rgMJ6ezPWL9n+8DXrgbD/mcQvLa5h3lJZQqZjsTiswxBv8ZXT6l
         0vpUELak+xxv6m3wgeAPY01Oq2z9EExJIOOsNh2Y4q4tdYkUGVHdzz9LWfhzhtdM6tzu
         1O5TnnUybijX4eFPOG4YX6FvlvSdlFsSeHT+VV437FHTQaMU6oIE8SqsbIQ7L7OhR7T5
         30E78rMFgLZrtwMtY+Jf93tH8z2OHf/PyGx/veeKO4NrNsJG8uIqW69L02VMCl7rFlnp
         ouMQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730922889; x=1731527689;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GZo0N10rAGJSd3tRJ9ufx2C66rpWR8vYxYUANVd3GB0=;
        b=ijCy1OQeApb8f6K5xeRlhGcm3ZB/Fv/oEOgxo2Ml/VFr6KOTDudOgEtuZAoPokIqEd
         f1vW5wq9qaNvowgYTNRi8E1+Gi19eHZDPd+VXm4a1AAJI0NHdQXzSkd0/PigVyYMA2bO
         5vDvtp+q0pSCIgO/ivrB35s2yTmbk9DzZOxghSJJi4gLAQOCndugxrqQGCESCIFSKBwV
         9dJWlhg8Dg5/bIju57Mwjpy4Jo0iDJ1hGm5wbUurz0HYnYSXLKdOGLKAdSn5I3MQIzIR
         /WiOqhSXMQ27LBNd4gEnkhVFt1jaRvaALa1EDodF132b4h+Pdqoi34kBgSSkuLHlMnXg
         VdEw==
X-Forwarded-Encrypted: i=2; AJvYcCU04g4ZCSlR2WXMEFcGDKcf6r7S9B0iha9LsNdN0bDe/7r+BtsXNa+ctXbBvtBiew2LP1mhKw==@lfdr.de
X-Gm-Message-State: AOJu0YyHmmiX6JvXejTfv4HpXFR47Dgj3kuNRQ/Q5ZPu0ZZ/qP9weko+
	Uhfe/R10zpv4jkWeSzjVYBkhh/nkXJqVHXK+Vd0gGEiM9KlVQqamT1ZqP0BHMIg=
X-Google-Smtp-Source: AGHT+IEv3TkR9EIs1E4Igjqc30Uacct6YQW6eyjAOugOw0GW7wTuDkhTTh6oerQoeFebC22jMudDiw==
X-Received: by 2002:a05:6871:5809:b0:288:67e7:a862 with SMTP id 586e51a60fabf-29464810505mr26357973fac.25.1730922888608;
        Wed, 06 Nov 2024 11:54:48 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:be97:b0:277:f2fe:7dae with SMTP id
 586e51a60fabf-295409bc3fels240990fac.0.-pod-prod-01-us; Wed, 06 Nov 2024
 11:54:48 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXERxFSti8xlmHucLDBOmW4a/Wrpkz3pdqX5S07Rtkq4Dz4HrDfi6xF+aQrspysuBQZ2rxFSa+mZRcfkA==@gapps.redhat.com
X-Received: by 2002:a05:6358:2926:b0:1bc:89ab:e5f9 with SMTP id e5c5f4694b2df-1c5e32a7744mr1592200255d.2.1730922887891;
        Wed, 06 Nov 2024 11:54:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1730922887; cv=none;
        d=google.com; s=arc-20240605;
        b=YHk6ApidknlmLxYx/4msuxGxhbhgRPkobJIiaiqsqG1QVgL7Cgbe25vERTIiQ/GSvf
         5PZkTHiMmuOkxvSptl4xKbrsQyKPJlSBTAD4ts2CWMMM5MdaOCjT4Pj/RHQh3xHV3oXk
         /945HAEQ5WvQbahBNrq1uZcbnq3nwqaNjEHYO7ePcNlpsmF2mZwRV010ivkZNmPcNjI3
         pEQZZQ07qeLGTn7Vnb8e1dv0a391WZRgTqUNQRed82WBEL0W7wyf0wD8tszTHClK7Hl7
         kCFW70ZRhFnZmxBI7H1+Z4zWx22+JeDDMB2elaa8/FSfwES98G1UsXKfq6BaSxOQ2AmM
         q7BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=MbzPIRlTAe6bga1k2BLUN+IWpCn/xcHwCTw29AL55Nw=;
        fh=Ppud5brXcO7Ii9GUjWP5Bn7eOaZbOlsG2+9D/2yFPDM=;
        b=jARE/1wSDm47qHMr5FokSVQhBvkgfjRCmiJbY4jan8bzkow/iU/Lfv9UsF3FSxyqfE
         SdAzYufkod3Ks83nWFC9Q4jv1DCPXqcxttrOXj6y+Ci1ZwKVrhDXrkkttTnGyFjF8lPZ
         XXew6uUP5vV+YX3hUiARCG15QdGYD3ELgyqa3oVwYYlFhne1N7vpBdijJoXhKmjS6bqa
         LbAl4cRaG5AJfyNFFzIBk47LsoYfLC7guMtYQTFIw3VBSVDAOoLZgRTsWT7o/Q6r8YPy
         x8EIfWOjn4tLuWUEd5rXVXOIQ2dgHaObrQQmuYNVbQy5p7eMh+bElDGqyaX3TjIMoZxk
         KhLA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7b2f39f268bsi1674871985a.106.2024.11.06.11.54.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 11:54:47 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-638-W5HbyeynOfiCzW_uXjoavw-1; Wed,
 06 Nov 2024 14:54:46 -0500
X-MC-Unique: W5HbyeynOfiCzW_uXjoavw-1
X-Mimecast-MFC-AGG-ID: W5HbyeynOfiCzW_uXjoavw
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E32D419560B4
	for <blinux-list@gapps.redhat.com>; Wed,  6 Nov 2024 19:54:45 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DD8FB1955F21; Wed,  6 Nov 2024 19:54:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DB0ED1955F41
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 19:54:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 578811955D91
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 19:54:45 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-494-iA73yuCWPguBpIG5WcIBjQ-1; Wed,
 06 Nov 2024 14:54:43 -0500
X-MC-Unique: iA73yuCWPguBpIG5WcIBjQ-1
X-Mimecast-MFC-AGG-ID: iA73yuCWPguBpIG5WcIBjQ
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4XkGBW0Mp6z4Tkp;
	Wed,  6 Nov 2024 14:54:43 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4XkGBV75M9zcbc; Wed,  6 Nov 2024 14:54:42 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4XkGBV71qHzcbV;
	Wed,  6 Nov 2024 14:54:42 -0500 (EST)
Date: Wed, 6 Nov 2024 14:54:42 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: mattias jonsson <mjonsson1986@gmail.com>, blinux-list@redhat.com
Subject: Re: chromebook and tdsr
In-Reply-To: <19303070cf0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
Message-ID: <f60bd839-7cec-7003-65e9-76e5a8fc5a90@panix.com>
References: <fd0ee2da-860d-5025-92c8-9f347530982b@panix.com> <193021c8db0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com> <48b60262-4cc5-39c5-7269-a6585c352296@panix.com> <19303070cf0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: MpfudKWvegIah3hjJN-e4L1S8-DEnY5FfiRQPhfIkis_1730922883
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: B05V0uLN71Z5jOIbJPr_5fCQzQYQm8bSiF8mzpwUZlc_1730922886
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

I use tdsr commands regularly.  The details are in readme.md in the tdsr
directory.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 6 Nov 2024, mattias jonsson wrote:

> so how do you change tdsr settings
> or do you prehaps dont use anny of tdsr commands
>
>
> Den 6 november 2024 20:42:48 skrev Jude DaShiell <jdashiel@panix.com>:
>
> > meta key?  chromebooks have no meta key.  They have a command key just
> > above the shift key and I don't use it or need to use it when running
> > tdsr.
> >
> > --
> >  Jude <jdashiel at panix dot com>
> >  "There are four boxes to be used in defense of liberty:
> >  soap, ballot, jury, and ammo.
> >  Please use in that order."
> >  Ed Howdershelt 1940.
> >
> > On Wed, 6 Nov 2024, mattias jonsson wrote:
> >
> >> jude
> >> how do you use the meta key for tdsr
> >> you cant set the alt key as meta key?
> >>
> >>
> >> Den 27 oktober 2024 18:50:32 skrev Jude DaShiell <jdashiel@panix.com>:
> >>
> >> > I'm using the package in the debian container environment with 96gb of
> >> > space so it has enough room to swing a cat. tdsr for whatever reason
> >> > needs
> >> > to be started once the penguin shell is opened with chromevox turned off.
> >> > For whatever reason so far the command to start tdsr cannot be appended
> >> > to
> >> > .bashrc without generating trace back errors.  My guess is the command
> >> > just before the command to invoke tdsr needs a couple ampersands attached
> >> > to its end so tdsr will only start after that command has run to its end.
> >> > I've tried it other ways and had to power wash the chromebook to clear my
> >> > mistakes.  If I can get the sound card to play a tone at the end of
> >> > .bashrc execution that would be helpful too.  The shell comes up slowly
> >> > even with chromevox disabled. I'm using an acer spin #713 I bought a few
> >> > years ago since my main linux tower died and went to the recycler until I
> >> > can go and buy a replacement for it.
> >> >
> >> > --
> >> >  Jude <jdashiel at panix dot com>
> >> >  "There are four boxes to be used in defense of liberty:
> >> >  soap, ballot, jury, and ammo.
> >> >  Please use in that order."
> >> >  Ed Howdershelt 1940.
> >> >
> >> > To unsubscribe from this group and stop receiving emails from it, send an
> >> > email to blinux-list+unsubscribe@redhat.com.
> >> >
> >>
> >> To unsubscribe from this group and stop receiving emails from it, send an
> >> email to blinux-list+unsubscribe@redhat.com.
> >>
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

