Return-Path: <blinux-list+bncBCLPHQH4XEIRB4V5V24QMGQEJYAT4QA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 057309BF3A2
	for <lists+blinux-list@lfdr.de>; Wed,  6 Nov 2024 17:53:08 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cbf039dccfsf284276d6.0
        for <lists+blinux-list@lfdr.de>; Wed, 06 Nov 2024 08:53:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1730911987; cv=pass;
        d=google.com; s=arc-20240605;
        b=PeFSuVMEhmBlJ32/28ebB6Krb2NO4qlDKclrHQFUjdVqh98bdrC+JNqC80f2Fqkq96
         fFD3dxrYwZQyi51kgZgc9MvrHexucK81rjc/8kkPbovWrkKNok5LO3Bkx4aP13okJpIh
         ihnsILAjbchtnF1gAogIzgGWIYqn6Jb7P8L8XIiZnlJTjR/T7WZCNt9PlpjQys02sUaG
         aKNvq0+vddfTKcHBYfPkY+E4KLqBvId+txo7dcBDEBkspzJVFmqlQ2mJzsax8ifrxjkH
         K7Aq3pX2nY3bPypmqB2izIItDI98rPFBDnhJg9KFX0S9ePAGIuu4UHoftFlFQOhAt1oA
         maPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=RjntQurJ5I/M/13gISJugXepZDVM0G9TAq++nZmmqoI=;
        fh=0v7sDB2rPCyuAZRYBCPcVeb0gukpdVYcUVZXwmeDvRg=;
        b=HBdvXmP435jlp8EV3iNEwdYK7d0pBa/HG2Cbh0Sj5eanGfEwg6ETyHNLrRcQ3hL101
         3Z1KkgjaV5YTwSzpFQKGjzscImzS/0oEfo7Z171PFNRNNWI0CSTTMEH60phDmgN0tmlR
         76qojEqbJw0YDxkIgYY0ZR9tWrwCR2guHWfej/sHKq7t2vYTq9zyXgLTVgG96AL6qxPQ
         x7Iza88E0XvXm9DGAMlKqANZNMbFUWa7dTXl4vHqPYOgBT5gicZPAwFoBp5U0XkqE5bm
         UxzxTaokcYdG0eWtJlAI2UO7BoWKA1fLuKXv+dfsgSx/Zve9QpZRytVcxlKIXcrUfSHY
         VwNQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730911987; x=1731516787;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RjntQurJ5I/M/13gISJugXepZDVM0G9TAq++nZmmqoI=;
        b=o59HSJULW3LJJp44kERtjzst9EsAVjJOsUxUPtD90uV4LQA0r8W+2V98bgFEYuvX05
         vhQrW5aUGg0e4L67WWZm5vCtoJBxQoG7IZDqz9Pr08akCGAnwZG/NOb0hMYmW/w0+V8u
         Yjr7vEBbb0yQ1WRS02OUn6ed/QJT1IkF1/tV51+oU2x1LObvn9XLl4USWcFs6Cqmhe5B
         pkC/sCie5NBAsRolcypSUdHe3lCNcQ7/bE1sZxHsdjfQaFoy9WjOpehRUofOakCF7moX
         gycBP15dk++JX6vcy1ClMMsXtWVKrLz2O+yqflugZ1XZmHOLheO58oQY8i/aTIiiXt3Y
         jFbA==
X-Forwarded-Encrypted: i=2; AJvYcCXZA+7a6VKjGWabL6Vn9TuRvkjwIf9IN6n0RS1zwh738gHGsqgQ6OnB2lN1EBr0wEBRMiCxhA==@lfdr.de
X-Gm-Message-State: AOJu0Yzn9gU5o4TJY1A1Y35RJJwjkSr9ewk84b/aR3xyy/ykGM8ul+qd
	KGdcQelgK8Oi2kJJ36eYyV9k6d3B2yH7Qzi2MzdMIgk9RvjutpmNToygATUxjP4=
X-Google-Smtp-Source: AGHT+IEi6W9iaaofm8hkK6jCx3A+rO3Ubqi7HfO0bG5IWwSM3wzy9sruDXIJEBxILRcR1kwLl9HxDA==
X-Received: by 2002:a05:6214:5f04:b0:6d3:7712:b223 with SMTP id 6a1803df08f44-6d37712b284mr211027466d6.7.1730911986736;
        Wed, 06 Nov 2024 08:53:06 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:d02:b0:6c1:7c1d:2ffc with SMTP id
 6a1803df08f44-6d3935429c2ls1139956d6.1.-pod-prod-07-us; Wed, 06 Nov 2024
 08:53:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXjAEzy/4KoZZbbdotSXaXwA/4nYuDw19vkZBFyezGZjLLRF1oe4aRDn5n80lTpW6Lv5lN5Uhqa4apWDQ==@gapps.redhat.com
X-Received: by 2002:a05:6214:318e:b0:6cc:b4:5dcb with SMTP id 6a1803df08f44-6d185859497mr497149786d6.47.1730911985701;
        Wed, 06 Nov 2024 08:53:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1730911985; cv=none;
        d=google.com; s=arc-20240605;
        b=gAe+VHFlRlWxOCBkoWQ3RynWz/3/QOrTyp4hofiao5UBc7VOTbOvaZW6ecHmRsRS+K
         cHOYvZsDZPdhFATxjii4mfYE/P++gRTQWAq/aFXkFuGxxllNNzGg7ZIp7ppVlJJgM/qE
         ABavVvhYUAFBruvpkKHRlKTzdcTY/loebfR3Tonbc9GJPeLVbDA2jS8CAPj7Qpt6/TIK
         qQL+5b0oVttHd1IccG0ncJ8ZlVuNkPH5oNjvuTi56l24rGw2qvhYKVl9BnOsQ/YWHvwn
         yEzInm/CsUgnGUBU8Sw/rgvs/+XGae8E7HCamcpZOjbZv08xs51DooWOaY27u67MjkSO
         gl3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=ITRtmWF0ltGYIrj/jx3DFZ0X1gkR+mlAM9i7IYGppb4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=OtkemXyLw+3VzNvvaf6egsEqK2CMOf7Y0xXAd8i6yVx41PKb7ECEsKnUkeWFTfVjX5
         8pVIm/6Gn6NYPSDqWuAjfSIrvyj4cNhlA4qWEhcHSJpNxi5153LvZ2VQBIbpvvDQXEUw
         FmT9aCdRzz1CEq47+Z2PjKZbjV2w56PAvlP0XNAJG1DhRIfurKTIHXGtkEVF5Qd2YRBs
         XMuUtnDWKp0VTukPPJ8Dev7snmKWgNeqTpwr0PIK3YBAlde6ij5P5XCr5c0VpgdJK79w
         xL84sPMBqeVN3IvMXOTIiUzUotbsEl7O/4fhkJljW8BbLFSHie8vqs0NcK4mgMidGexI
         52nQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d35416b880si155269496d6.215.2024.11.06.08.53.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 08:53:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-178-_0XeFKGjO_KFV953zv9QcQ-1; Wed,
 06 Nov 2024 11:53:04 -0500
X-MC-Unique: _0XeFKGjO_KFV953zv9QcQ-1
X-Mimecast-MFC-AGG-ID: _0XeFKGjO_KFV953zv9QcQ
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4760B19560B0
	for <blinux-list@gapps.redhat.com>; Wed,  6 Nov 2024 16:53:03 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 40E1E30001A5; Wed,  6 Nov 2024 16:53:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3E28C3000198
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 16:53:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 94518195608C
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 16:53:02 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-168-SQoJ6uHAOsqi0fznwgPVZg-1; Wed,
 06 Nov 2024 11:53:00 -0500
X-MC-Unique: SQoJ6uHAOsqi0fznwgPVZg-1
X-Mimecast-MFC-AGG-ID: SQoJ6uHAOsqi0fznwgPVZg
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 2BF0A320D4
	for <blinux-list@redhat.com>; Wed, 06 Nov 2024 16:52:59 +0000 (UTC)
Message-ID: <3907f9d6-daa5-4776-8197-6f9d4b19a82e@jasonjgw.net>
Date: Wed, 6 Nov 2024 11:52:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: crostini and brltty
To: blinux-list@redhat.com
References: <193023b73d8.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <193023b73d8.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
X-Mimecast-MFC-PROC-ID: kzERd-gcg0DiVo68ryrFSKs7VgCE-GU4RfexkGpS_Z4_1730911979
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: quZbEXKSsy2E5XofZd3vbfNCOFmBG8kw3MCxoy9sVHI_1730911983
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------6Ml8soN5eHuX3Ks414Vg0MmN"
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
--------------6Ml8soN5eHuX3Ks414Vg0MmN
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 6/11/24 11:07, mattias jonsson wrote:
>
> have anyone get brltty to work on crostini?
> i allways get the no screen error
>
A contributor to the BRLTTY mailing list recently reported having it 
working under BRLTTY 6.7 with the new TTY-based driver, but cursor 
tracking was said to be unreliable.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------6Ml8soN5eHuX3Ks414Vg0MmN
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/11/24 11:07, mattias jonsson
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:193023b73d8.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com">
      <div style="color: black;">
        <p style="margin: 0 0 1em 0; color: black;">have anyone get
          brltty to work on crostini?<br>
          i allways get the no screen error</p>
      </div>
    </blockquote>
    A contributor to the BRLTTY mailing list recently reported having it
    working under BRLTTY 6.7 with the new TTY-based driver, but cursor
    tracking was said to be unreliable.<br>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------6Ml8soN5eHuX3Ks414Vg0MmN--

