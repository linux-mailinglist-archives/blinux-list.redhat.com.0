Return-Path: <blinux-list+bncBCL5FHHSVEIBB6EYV24QMGQE6ROWVWQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5119BF1CE
	for <lists+blinux-list@lfdr.de>; Wed,  6 Nov 2024 16:34:18 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-460b025468asf1287811cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 06 Nov 2024 07:34:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1730907257; cv=pass;
        d=google.com; s=arc-20240605;
        b=MCBIZn74Ex2FfvjZsxMJPO4/o0Itc4jUdgesiJ/C30mS5Pil2UgjJEiz/XJpMhyH6k
         U7LnDUzHh9wFYRjB9Fvp+IvsSRSr382sLlkMMuzYmYXlVer2aCjrIuIcuyXdYT0ys04r
         9GqvZlOr/ojxp6n/3MtceQn7bIEfWi5K60rbi7W3Ui1NBhhUvGkm+Y3mqW4W1H0kR/Yo
         +YAr2ihjfkr0r1bDFqEvKQdp+zbsBA/joZvmNmPeJmetPdnzefqN/rvxD6LleRnOHbz/
         Rj+adzqe1T1glD2gQy0ifMXMb9mgpM+aHZMIYLmLJAFoQcjRtpl711TlsNJRW0ufwBON
         rVDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:subject:user-agent:references
         :in-reply-to:message-id:date:to:from:delivered-to;
        bh=vTm007MkMl50M6yCUMVAkt/S2D/FSkbco2nwHGvwAow=;
        fh=HS2x677vHLIsAMLGme5mmQsFGQKReFGc0UDpMOS68Ec=;
        b=C7RxPJ+4s3QBSjssiufNFxoYcht+VMmDPcUwwEPeg1piNn235aKQ0OkYpbmdErWvkg
         +OLw7SHPIf0qIOS55VbcS4VsGPfpkVL6+0g6r+FWgmRkVjpmEBQZd+eH5k156T5q8DR+
         m+ZJJC++yBa/oMys2l7+64zMjrSjhBBePmykejK3GfnqNcC6TR5cjguJEw2IsuYCfGVl
         3rdJq+j1B7dIKc9MO4eHKsuqlUWV8On6qmTnqZOHtOqkN3LOu0iuRJPeHU+8NtPT2sV5
         69xLqeHpNKWwYsUuihXLk0k8Es5FHeyDQh7F6vHMkaCYXBZgTuQKeAYBI3ymG4AZUipy
         GNCQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.41 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730907257; x=1731512057;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :subject:user-agent:references:in-reply-to:message-id:date:to:from
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vTm007MkMl50M6yCUMVAkt/S2D/FSkbco2nwHGvwAow=;
        b=XBFGQ8c2Dh4uIh0vDseFpwuaZ4Q3j9gWpwqjA84wf9UPH91xsmLxbQ/N7s4jLRDA3R
         PfL7kJ/h+f7PFIw55R+m8+T1Szfl+1MADgOWsKMxkmZO9Es7FWupZY3iSlQWBkvYC+7S
         y6dwpUR8nFpHX5dJJL3lkn7nnXKZJS8gIEKQROGegPvUZ/3ux3G6sYgR6ZPBCN9/gZPC
         u+ypYApWmjW3bf4WkjoK63m9KHNlqSZJzhdk+TpZMJjkIEWlSYRuP1mO+FbnYAh0HZHK
         QqftEupAmLPAHUBtdr5lPNff4g97EFGREDi1OP3zqfzduUEzOda1JVhs5KDGDAb1CnaH
         nLGQ==
X-Forwarded-Encrypted: i=2; AJvYcCWt806tJw9WPKGUaHCPBHHIIFcxk38mqaSPSEKGMwC8w63X1FF+PE8OBfOJxzEUJGE7ljFARQ==@lfdr.de
X-Gm-Message-State: AOJu0YzY1UnX106zXUYfK9oECeVyVufjxhvBCEtxVtP+E72jLs3ytIjx
	pMUQKKocIxTUEiwkvG6GZQGA4tS7JNrvXpHQx+2ZEHi0V9yvHFj7jbIlRgB0XiM=
X-Google-Smtp-Source: AGHT+IG+OIs9fZSw36yJ0HFmXH7k3ShBU/wzodFuZ2wMEyfs4Y7PFeVs+YPWaUlz/wiepZoUlNa/sw==
X-Received: by 2002:a05:622a:528b:b0:461:3e03:738b with SMTP id d75a77b69052e-462fa619d72mr212031cf.19.1730907256587;
        Wed, 06 Nov 2024 07:34:16 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:240b:b0:6cb:c91d:f3d2 with SMTP id
 6a1803df08f44-6d3933cb8f8ls70846d6.0.-pod-prod-09-us; Wed, 06 Nov 2024
 07:34:15 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX+D7cWZz+twXrOCtEOwviH3GMQrzZnJ/0rPK+6PdaBsjdzTOMEsvAFr1rYzRZsSNIia+EYL3ER/oCsfw==@gapps.redhat.com
X-Received: by 2002:a67:cf06:0:b0:4a9:79de:88e4 with SMTP id ada2fe7eead31-4a979de8a1cmr10431629137.4.1730907255407;
        Wed, 06 Nov 2024 07:34:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1730907255; cv=none;
        d=google.com; s=arc-20240605;
        b=ModAFnptYQhtrvzd9OWxZ5SGxxx3dRzX0iNI1f+hgzlnMGjer32a7rUKCdfhZbwbm/
         iMa0ZM97LJzSjtgMutZXDA2JVMCoGMxvOuzcTxGa4YW1KynZ94L2mxiAnACu7xM8Rpi5
         jfVZdrwLY3QOxA70jWMNMuEBeTf6VY/AVpo/9FQMMT/BH1ydNDGq8PMZKNqrSSPG1bnb
         yqK0hwdDNOosMulMW1uRBZqWSxLEDrjfGZwpAOwg3wFd/0gcSyQPkNCYTjZABDENCVqX
         JJs2s2onISZTwINsYvpURumkl/bLaA67VwzjtUFU9sWhUeuKubmsJoDazt2MvzH1LA/D
         Ttqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:subject:user-agent:references:in-reply-to:message-id
         :date:to:from:delivered-to;
        bh=+hvZSrthhlqY0T8/swtPS406UoIdpwZSBVb18pvtEIY=;
        fh=zR//vNQydIH3nW0FKuV8tJEgmMExdpblU5paFb8UHxE=;
        b=OzUQM7ZNM4fOORYqtQ0jMLhQC/440bZfpt0Ur5AdCxP0msgRkPCa8uestnIkg59LGU
         UBgR9xiVfMI9XVtGaNGgISf2lm3HeW25r8QHmrZiaBnhld30YEp/Z1iyrLMakSAwzwWC
         mOjhOrqQh1UHxY+cX8zBwC1jP+NxXAW+tNJkOO9UEMN086zWyNMYEQFY3XG8q4i90E8V
         q9IaOTbFLnUpwK7yRrH0AxCKUCPYfi4p2ebIw8ehcNxEhg/lEdiCeldI3HYimLEZOLcf
         QZrQyKbHKNy1J1pOYDPH83c+JRRS91g4l68pz42tdOAyX+EgQBn7RU5WZDKqtyHMmq6e
         5j3w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.41 as permitted sender) smtp.mailfrom=mjonsson1986@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ada2fe7eead31-4a9575a7a13si2942523137.735.2024.11.06.07.34.15
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 07:34:15 -0800 (PST)
Received-SPF: pass (google.com: domain of mjonsson1986@gmail.com designates 209.85.167.41 as permitted sender) client-ip=209.85.167.41;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-496-pfIwmnHjOMOuOf01zLCDOg-1; Wed,
 06 Nov 2024 10:34:13 -0500
X-MC-Unique: pfIwmnHjOMOuOf01zLCDOg-1
X-Mimecast-MFC-AGG-ID: pfIwmnHjOMOuOf01zLCDOg
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E7FCD1955D5B
	for <blinux-list@gapps.redhat.com>; Wed,  6 Nov 2024 15:34:12 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E27ED1956054; Wed,  6 Nov 2024 15:34:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DFD7219560AA
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 15:34:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7C4F719560A2
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 15:34:12 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-477-ODOv6bGcO8qs71pvElTJ0Q-1; Wed, 06 Nov 2024 10:34:09 -0500
X-MC-Unique: ODOv6bGcO8qs71pvElTJ0Q-1
X-Mimecast-MFC-AGG-ID: ODOv6bGcO8qs71pvElTJ0Q
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539e151d73fso947856e87.1
        for <blinux-list@redhat.com>; Wed, 06 Nov 2024 07:34:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWn2i1ZcD2PnLcVoaFhDhpnHWfTLouCbL4KAgAnSOvQ9kvVf9fQn2dSmC5bYlqAvsqL4wUdz5AqZry46Q==@redhat.com
X-Received: by 2002:a05:651c:881:b0:2fb:6509:b6d4 with SMTP id 38308e7fff4ca-2ff1472eb6emr107171fa.1.1730907247650;
        Wed, 06 Nov 2024 07:34:07 -0800 (PST)
Received: from [100.115.92.22] (m83-182-145-175.cust.tele2.se. [83.182.145.175])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fdef8c367fsm25220891fa.111.2024.11.06.07.34.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2024 07:34:07 -0800 (PST)
From: mattias jonsson <mjonsson1986@gmail.com>
To: Jude DaShiell <jdashiel@panix.com>, <blinux-list@redhat.com>
Date: Wed, 06 Nov 2024 16:34:06 +0100
Message-ID: <193021c8db0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
In-Reply-To: <fd0ee2da-860d-5025-92c8-9f347530982b@panix.com>
References: <fd0ee2da-860d-5025-92c8-9f347530982b@panix.com>
User-Agent: AquaMail/1.53.0 (build: 105300523)
Subject: Re: chromebook and tdsr
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: olFJSoa-EeEtmcMfPwvuXSR-_ftWcxPers2x4MOdBZ0_1730907248
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: otIgzm2HD4iOrIrfTWfesgDMfjeqTTqj7tqij_pnnnc_1730907253
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="193021c8e943dcb275e4706920"
X-Original-Sender: mjonsson1986@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mjonsson1986@gmail.com designates 209.85.167.41 as permitted
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
--193021c8e943dcb275e4706920
Content-Type: text/plain; format=flowed; charset="UTF-8"

jude
how do you use the meta key for tdsr
you cant set the alt key as meta key?


Den 27 oktober 2024 18:50:32 skrev Jude DaShiell <jdashiel@panix.com>:

> I'm using the package in the debian container environment with 96gb of
> space so it has enough room to swing a cat. tdsr for whatever reason needs
> to be started once the penguin shell is opened with chromevox turned off.
> For whatever reason so far the command to start tdsr cannot be appended to
> .bashrc without generating trace back errors.  My guess is the command
> just before the command to invoke tdsr needs a couple ampersands attached
> to its end so tdsr will only start after that command has run to its end.
> I've tried it other ways and had to power wash the chromebook to clear my
> mistakes.  If I can get the sound card to play a tone at the end of
> .bashrc execution that would be helpful too.  The shell comes up slowly
> even with chromevox disabled. I'm using an acer spin #713 I bought a few
> years ago since my main linux tower died and went to the recycler until I
> can go and buy a replacement for it.
>
> -- 
>  Jude <jdashiel at panix dot com>
>  "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo.
>  Please use in that order."
>  Ed Howdershelt 1940.
>
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--193021c8e943dcb275e4706920
Content-Type: text/html; charset="UTF-8"

<html>
<head>
<meta http-equiv="Content-Type" content="text/html"/>
</head>
<body>
<div style="color: black;">
<p style="margin: 0 0 1em 0; color: black;">jude<br>
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
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">-- <br>
Jude &lt;jdashiel at panix dot com&gt;<br>
"There are four boxes to be used in defense of liberty:<br>
soap, ballot, jury, and ammo.<br>
Please use in that order."<br>
Ed Howdershelt 1940.</p>
<p style="margin: 0 0 1em 0; color: black; font-family: sans-serif;">To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.</p>
</blockquote>
</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--193021c8e943dcb275e4706920--

