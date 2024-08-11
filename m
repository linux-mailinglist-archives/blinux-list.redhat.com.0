Return-Path: <blinux-list+bncBCLPHQH4XEIRBUE24S2QMGQEMJSSJ2Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBF094E2BE
	for <lists+blinux-list@lfdr.de>; Sun, 11 Aug 2024 21:13:22 +0200 (CEST)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-e0bb206570asf6684233276.3
        for <lists+blinux-list@lfdr.de>; Sun, 11 Aug 2024 12:13:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723403601; cv=pass;
        d=google.com; s=arc-20160816;
        b=RFFE9HIk5MDvsiQVcmBzL3549hwmwia8onj+KW4aBhOZxQ96NGEmFly85Vd//5QFpt
         aC6/ULL9Z+dqwGA8XOX7eJKVCu8EzklIzEd3o/bdHo7y48lE86+h3m/YihOvI1S+NzHo
         jSzdJlTdbZJMHlNw5v/J3c2AAPSlTKCoJd5urdJKWWA2Y6AukYMviK1EecOmHESpsJod
         CU6Ie8NRkWrRv0cGblm5kq9tfSNfi+MzAjGrsRL2J2J1LbjjOdR4kl+miQJwLr2kbYYh
         YJPhCHFenIGe8cRISknjNBasfu+QlVobx0KCQIc+wpJ04cwSdqfYI90BGEXGsMWWh9eD
         4wTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=G6udQ1LXmNWr2xEmEbnTkokAlsEVK6sfOohbhm7jWOA=;
        fh=+seTZJgBn8+TBOLQ0gCClqzBg+0ZlBHC7vhxPwgaV7M=;
        b=AF4KWdtrj4UpVbv4KFbb572665nl03DhbtZaO7I8aBxYkbKZziQZrZmodnuvJRmMDG
         PwbCNCC/d5SjJMZ1UnJMS0OpCos/V8BD9+xSbleLlzLSQCuvtx5dCfa08J9RaXoDTxrj
         mF9cHa/7bRuPP01Js/y0crEMg2dL3ftXyPQMydDl/BYyjJNKfX9vGrZvqIfVt0nCrvyY
         ZZIUp03vquWoVBFBKW/nksIJvVESR2AYAacr2tLq9iFRZE3QvD27nDgOS5MPcENAp91y
         N8UxgDhqdJdWH5MSIHDP2YmKHOssamLDjvVnK44yA1dX6a6RT0kkipdU+AIP5xSJjQv4
         31WQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723403601; x=1724008401;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G6udQ1LXmNWr2xEmEbnTkokAlsEVK6sfOohbhm7jWOA=;
        b=G4zaRgE68tsCIKAq8IiECrOBWLHeT87bpiFRyZ9Ofl6xgwqw1JFbfP1A9+zdr+x7ia
         Kjsa71SXWOzaPyjVmDOh0EMYhrMfYlrjUDRgvAT81MvuQ3Bg2eDBRalkT4O6pdN+evjc
         e248F3HZtToCTJ+mVgCpE7Sxa3n4xr8lxB9yOMYU39yvcl+zkfvHgbKuWQUTzxmAexw/
         XBtXrEocnH1XtDr4Y2elKi2TqgdRoEFuNB29ZW98WYjz92a2ITEOEidbROF10MX5yj4o
         XOuwnHXEdinN6kzuuNcm+RPWGeV1sVihom443ZXxw3MypghWYMbYMbyKlvx+zzL5oO5K
         Z7TQ==
X-Forwarded-Encrypted: i=2; AJvYcCVsh1V3Y5p8EBHHxn3AE5GzAqavZpdjNeXTVmG9Cb2L2NBSKZMxhZu1EAcaZ8Az82wt0nGUgw==@lfdr.de
X-Gm-Message-State: AOJu0Yx5lLh0yLxHfgwMqF3Z/+g42+LQ5oKfUiMwos1fnZ4tjuJDUgUo
	O9mwns/LDIn6AmBKaBIFB8W3pGl28Z4dKRcF9ETQtqP4+Qso7mXdgiXAbqdzJ2o=
X-Google-Smtp-Source: AGHT+IEoxBHAw/UIlxmi5yCtx/whQ6DcKpWyfSl1GHNSgizYM2JDetJpoVP41qvbJEXYGCr/r5AYQg==
X-Received: by 2002:a05:6902:18c1:b0:e0b:bf20:4ff1 with SMTP id 3f1490d57ef6-e0eb9915565mr8414140276.9.1723403600975;
        Sun, 11 Aug 2024 12:13:20 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:1895:b0:e0b:ba20:7f79 with SMTP id
 3f1490d57ef6-e0e97710f99ls7793276.2.-pod-prod-05-us; Sun, 11 Aug 2024
 12:13:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU2X368V5dnwZ2fUYs+/DsK2vwuYrUWw1RZcZF4Olz+H/zvi7p7gP8SY3YNbTHmlzyMOYDNQAprfKt54A==@gapps.redhat.com
X-Received: by 2002:a05:690c:82:b0:64b:75d8:5002 with SMTP id 00721157ae682-69ec49232camr111014547b3.9.1723403599784;
        Sun, 11 Aug 2024 12:13:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723403599; cv=none;
        d=google.com; s=arc-20160816;
        b=S8v7d8sT7m3Nv+LlK/d2MT/EzgxHom26FmG2htEccM+w8acVpEx7br5y8e26lEuvRn
         3h6sHvLaXBaKKHVj7+7ywNdMJEX7XDwentPr9RLbStV54HsEEVluNWODXehwBCkMFsaq
         6S4pK/+WTKJz9ZUpr1BBU/clD7kWbJX0VywhbZukDm7D2w6IpnxGm7e6L1IYby401Tvy
         +1r15pnt5DvwYBRvQjyKFRPSRaXgS/GaJ2kfok4HWtUCMcoWr07hfCft6HsdFBqnpLWE
         12Ng1ZJWVVzwZWzV6jm0CoJDMdKnhDKmIvqHRF7/FZfaDxi4nsHTgDr/fbZe99XdsMhc
         OmEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=3e69dj9GMDtKrPzR5Oy7nu+xMvMGgi0eX/FsjUE0irA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=rDbKxB/ayUCUPxW9MfXfSUeeEqIcoiDLHZATeL0wugMoOCIlvBCHZoYADxU8VsMNlE
         lvJ6T6e0+mIhdBFsla8nQK6XHW5EtVwf63A5y9GOurZkIzXyl5zWiF6iLeynUkb75/wZ
         TGTMppnAq/iFOUDZ9XSwxmF4lS75/BvkkVdhsGcn6sYrz1u96u5yOqjOW5Tvgc1N25Oh
         93KIg7eGNIvOQcQMAmAFe254rvAo4eley0sgtySAhT/WGDeu1oKxkYxeSxcGOxRP3P6Z
         Vjble3wfWctVgpqhrrHt8hRERVHJIi0xbxHr89w0oMzjMAsNdP9H3JZWvSguJn9DJCna
         4hzQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a4c7e236b4si463600485a.715.2024.08.11.12.13.19
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Aug 2024 12:13:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-246-AZo9eS6fMu-RDvVdtLwPRQ-1; Sun,
 11 Aug 2024 15:13:16 -0400
X-MC-Unique: AZo9eS6fMu-RDvVdtLwPRQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9F88E18EB222
	for <blinux-list@gapps.redhat.com>; Sun, 11 Aug 2024 19:13:15 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 995FA1955F45; Sun, 11 Aug 2024 19:13:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9685619560AE
	for <blinux-list@redhat.com>; Sun, 11 Aug 2024 19:13:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0DD7A19560A2
	for <blinux-list@redhat.com>; Sun, 11 Aug 2024 19:13:15 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-629-JuspcDRbPpqIpfoPHcgKRg-1; Sun,
 11 Aug 2024 15:13:12 -0400
X-MC-Unique: JuspcDRbPpqIpfoPHcgKRg-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id AFB3E32042
	for <blinux-list@redhat.com>; Sun, 11 Aug 2024 19:13:10 +0000 (UTC)
Message-ID: <c34b80ed-b64c-4b2e-b0d2-1cc495b5495f@jasonjgw.net>
Date: Sun, 11 Aug 2024 15:13:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: 6 dot braille input for linux
To: blinux-list@redhat.com
References: <1f3825cd-5d25-268b-1843-0aa3d9213bb4@panix.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <1f3825cd-5d25-268b-1843-0aa3d9213bb4@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------0Gy02V6V20Q8ajn7O0Fg0p78"
Content-Language: en-US, en-AU-large, en-US-large
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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
--------------0Gy02V6V20Q8ajn7O0Fg0p78
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 10/8/24 13:13, Jude DaShiell wrote:
> Do any packages exist that can do this in console and/or desktop?
BRLTTY can do this with supported Braille displays that have a braille 
keyboard. For the desktop, you still need to use an X11 environent and 
to run xbrlapi, unless something has changed recently.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------0Gy02V6V20Q8ajn7O0Fg0p78
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 10/8/24 13:13, Jude DaShiell wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1f3825cd-5d25-268b-1843-0aa3d9213bb4@panix.com">
      <pre>Do any packages exist that can do this in console and/or desktop?
</pre>
    </blockquote>
    BRLTTY can do this with supported Braille displays that have a
    braille keyboard. For the desktop, you still need to use an X11
    environent and to run xbrlapi, unless something has changed
    recently.<br>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------0Gy02V6V20Q8ajn7O0Fg0p78--

