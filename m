Return-Path: <blinux-list+bncBCPN3MHH6QPBB75BS6ZAMGQEZQFLLQQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 364D98C73BD
	for <lists+blinux-list@lfdr.de>; Thu, 16 May 2024 11:25:21 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-43dfa80c9ccsf91159031cf.3
        for <lists+blinux-list@lfdr.de>; Thu, 16 May 2024 02:25:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715851520; cv=pass;
        d=google.com; s=arc-20160816;
        b=qUUdG8wHCw/oQsJp81PqhzQcxreDgj9fM7Tvgc8qSHdDsK6I6FO8DKz3OqTYG8tPPi
         sSKikRAAPJsk71X6ZiO74vkdvv9klJee4SZtFlBRCRP+0hwEQ+tE6eHhJqjga4mJa733
         DVlmijZCKOP041GfcksL08ahPPSf/JCejs5TXoxlBcwem5qEMgZPyH41ILmiGl2bU8sj
         sOtn3Vd8egzEgk+lyB4/HwTQiGykFWclGu7mwOdB03rxbtytsKmn3zTEILOzIo/hh3cy
         AAweXlY72uJ+Y08bd2qJ7k/C3h0evar1yEX3e4ZEyhFnVVBDE3L3V8fmglNFwlqIo6Ln
         6V8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=Mo+w02qJEzqobpeu4OlEOuzyQV4zNV5Kaf+1Uk4vUaQ=;
        fh=onQ03Zc3nEpwEiohTvH3DZ+ZRsn64EGdsexkiy4++zs=;
        b=UBN+STENS7k0PPTJFz9wK4ZFD3+JFJZWM0QUSWv2fT2p2Ufbw+8DN8osS4ZyY/8ats
         63UajRIoo9Q1y/6Nl09n5sziRVgjN7PPzlQIIn6mcZKC64QQgyLS21PWFT1UrsNGJXAx
         BanHWYEXBcgKuge4dk94XP7l7fIukNGeFy7LoDYurhzkyVprkgmWuTnHOZEHNczk4p71
         Hsnfz4/2IA2AIHiGM2VL6hGvZ3z2tJYwT8BSTpMRy3+fJWOoCMoMPXTnrp8DFyGCL0RS
         g7eJ9oU0s6c9URWVNztUb6v+6mQg9USvEdyo+nKpRZm0ioVKTgUxHWBSKmt7g+VacDF0
         K02Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of destructatron2018@gmail.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=destructatron2018@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715851520; x=1716456320;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mo+w02qJEzqobpeu4OlEOuzyQV4zNV5Kaf+1Uk4vUaQ=;
        b=X33FtximC3Ij8dQzgaOxQR/OyWCPMt/ujru8W9DjAPwqBq3Ekf2QOHPLnhxyDvEX1C
         Ys4hM9SfnonyjzyCuKSmcM+FveYRV2zx0sx7MRZ1oN9S6KxagJM/1lf75+kBH7h601IG
         ztMy6XSArapoi2mvpUM7+j/YcziZAPUgTnqQoaVGC7xC4wwZJfP3kScvclW6FUNmhd/q
         3gJQ1cuLteJ50IJRybHGTnYiFI0tam1n72mRZVCFCXLk4PbVhFJjfwg/qaHU9nL57UHi
         GuUAt9A0D6H1ys7tO+0Rg/mMsTIh1toJLFMQRc+GUNEtRb4P1ZVjlZ+kpLjGmCx8hmKr
         WsvA==
X-Forwarded-Encrypted: i=2; AJvYcCWPRFpQbVJBpjNLE/Q5Hauc01ApTqFkBEPRtC4DofTFK5y3zk7Ab9lcLur+s4Z47gIuY/L+Ifo4nO7R64Isqm75IyWJWIoRxrr8
X-Gm-Message-State: AOJu0YzACwllSM9HGylIAhD5CFkdaxajmXcnkyTJGWMz590Uhwzlesuj
	JqN82Dwuu3GcKvPuK9bYzdCApynPMqM7BsCCLm4F9gOy0DmhRTwKrAA9SibXSBg=
X-Google-Smtp-Source: AGHT+IEBIxCPmrlHLPOPEgUltvVJx41/fqLs99kTXvQrIbYctiuiHn6IEof8/8fTTrR8sqZ16DZV0Q==
X-Received: by 2002:a05:622a:3c7:b0:43e:39db:3605 with SMTP id d75a77b69052e-43e39db38f3mr28163041cf.62.1715851519692;
        Thu, 16 May 2024 02:25:19 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:4a:b0:43a:dc52:cd68 with SMTP id
 d75a77b69052e-43ded02334bls42123501cf.0.-pod-prod-06-us; Thu, 16 May 2024
 02:25:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU15SX6hlusAYzfNK64si4eEq1f9a44kKKucQXrqvNvQGTJUL8CwXs9CTzbPtAsXJyAytNBRd1/HMFpRRHR7pELkbuTmFF5P/m9ufep
X-Received: by 2002:ac8:7e83:0:b0:43a:a4e9:6ca8 with SMTP id d75a77b69052e-43dfdb6921bmr232426781cf.60.1715851518872;
        Thu, 16 May 2024 02:25:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715851518; cv=none;
        d=google.com; s=arc-20160816;
        b=aEJ9M5KsiCom3wygA4x7ckX1hbVwxQgzqHv5e8BgSo1sRgXNGhbDwxVVNQ+e0pSQGy
         ee4cqvneslKGJHqrpt0LlHZ6fsyffwvvMqouzFVp8n1xtPl2mEifLYx2LBDZgBrbEa1w
         XjLvfjGHF9FEChRuK8bz4zJfsw6nStTIyXNxGCnFGrZuS5tuMpu6N0ouH+oZdslJlwDE
         9+7UJK/FarT+valxaSTyn5vTJb/Ts9mHvGfo7t/mBO4UIkBR1qj4VrznDNTr/JxH65Vd
         EoUeq2VVjFLH4Y2GHobQSek6/Q/1GHv3tli/2yv2yFAlwEa51vNfutlfXZEG3mzEvRQW
         uzEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=G4z+sEcTtyAj9g6Ollmw0jCx5Npm5Eh0ZA+nZplcBK4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=0BSCPF/XqMZrE3CfH+fN2K6I20gPHQIjetcKVCW1tX+iso4S+K4CJfC+PajfR3IdWM
         NUIpxPEkGaQo3XadSvOzLm6JM3jevDsx8fGegR5l4hzFiHVAF+iB+7mLpNKlejDwqt7X
         lrpv07yCEPoSI8f+vZXLE4JNaZBXPFwTpwxYAGc5+ZkzdTW/zLJZJx9dyoS6osMEv+y7
         /bRIdMhcdPs/K7j3Y/qSDDYovSXhebV6gZPQ0ZDzvqAwbt96cPrzYCVhPWcG7xZyoTeB
         29ZQIOd82WcmTuFsdj49m8PDcpEeY1W8Dh6EioG88CW8yA+O1wIziPRo2222THQhgGy1
         8ZSw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of destructatron2018@gmail.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=destructatron2018@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-43df54b623bsi105024211cf.220.2024.05.16.02.25.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 02:25:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of destructatron2018@gmail.com designates 209.85.128.47 as permitted sender) client-ip=209.85.128.47;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-499-JkcgMSA0PvOYuOrAk6ayUg-1; Thu,
 16 May 2024 05:25:17 -0400
X-MC-Unique: JkcgMSA0PvOYuOrAk6ayUg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6FA621936187
	for <blinux-list@gapps.redhat.com>; Thu, 16 May 2024 09:25:16 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5E7C43001D21; Thu, 16 May 2024 09:25:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5B6FB3001D1F
	for <blinux-list@redhat.com>; Thu, 16 May 2024 09:25:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C93D41955DCA
	for <blinux-list@redhat.com>; Thu, 16 May 2024 09:25:15 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-224-OcqeVfhhNfa0op_EuJF2mw-1; Thu, 16 May 2024 05:25:11 -0400
X-MC-Unique: OcqeVfhhNfa0op_EuJF2mw-1
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4202959b060so4521075e9.2
        for <blinux-list@redhat.com>; Thu, 16 May 2024 02:25:11 -0700 (PDT)
X-Received: by 2002:a05:600c:46ce:b0:41f:f447:e874 with SMTP id 5b1f17b1804b1-41ff447e9ddmr126393415e9.24.1715851509606;
        Thu, 16 May 2024 02:25:09 -0700 (PDT)
Received: from [10.130.248.2] ([37.203.138.228])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce9431sm256449305e9.28.2024.05.16.02.25.08
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 May 2024 02:25:09 -0700 (PDT)
Message-ID: <ab741eff-7034-44c5-b7f7-1a34717c22f3@gmail.com>
Date: Thu, 16 May 2024 10:25:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Booting from USB stik via CLI, possible?
To: blinux-list@redhat.com
References: <CAC9uDhb1dtJqbniKd=7w6nn_XZ20h0sV9-nnrNf+2W35jUvw_g@mail.gmail.com>
From: Harley Richardson <destructatron2018@gmail.com>
In-Reply-To: <CAC9uDhb1dtJqbniKd=7w6nn_XZ20h0sV9-nnrNf+2W35jUvw_g@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative;
 boundary="------------9nUFhXBHzGC0gNe4oaxcNKLw"
Content-Language: en-US
X-Original-Sender: destructatron2018@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of destructatron2018@gmail.com designates 209.85.128.47 as permitted
 sender) smtp.mailfrom=destructatron2018@gmail.com
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
--------------9nUFhXBHzGC0gNe4oaxcNKLw
Content-Type: text/plain; charset="UTF-8"; format=flowed

Hello,

You can use efibootmgr to make your USB be the next boot entry the next 
time you reboot, only takes effect once so when you reboot again it'll 
go back to the defaults. You use efibootmgr -n number. If your USB was 
at index 0003, you'd type sudo efibootmgr -n 0003 and reboot, and it 
would boot you straight into the ventoy stick.

harley

On 16/05/2024 09:51, jace Kattalakis wrote:
> So this is something I'm wondering. Is it possible to have a USB stick 
> be booted from via the terminal? I checked efibootmgr and it has two 
> entries so logially that'd mean I just go down three or four times in 
> the boot menu and then go from there.
>
> Or can I somehow tell the system to go and reboot and load the stick? 
> if it helps it is a Ventoy stick which I'm trying to do this with 
> though so I'm not sure how that affects things
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------9nUFhXBHzGC0gNe4oaxcNKLw
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hello,</p>
    <p>You can use efibootmgr to make your USB be the next boot entry
      the next time you reboot, only takes effect once so when you
      reboot again it'll go back to the defaults. You use efibootmgr -n
      number. If your USB was at index 0003, you'd type sudo efibootmgr
      -n 0003 and reboot, and it would boot you straight into the ventoy
      stick.</p>
    <p>harley<br>
    </p>
    <div class="moz-cite-prefix">On 16/05/2024 09:51, jace Kattalakis
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAC9uDhb1dtJqbniKd=7w6nn_XZ20h0sV9-nnrNf+2W35jUvw_g@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>So this is something I'm wondering. Is it possible to have
          a USB stick be booted from via the terminal? I checked
          efibootmgr and it has two entries so logially that'd mean I
          just go down three or four times in the boot menu and then go
          from there.<br>
          <br>
        </div>
        <div>Or can I somehow tell the system to go and reboot and load
          the stick? if it helps it is a Ventoy stick which I'm trying
          to do this with though so I'm not sure how that affects things<br>
        </div>
      </div>
      To unsubscribe from this group and stop receiving emails from it,
      send an email to <a
        href="mailto:blinux-list+unsubscribe@redhat.com"
        moz-do-not-send="true" class="moz-txt-link-freetext">blinux-list+unsubscribe@redhat.com</a>.<br>
    </blockquote>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------9nUFhXBHzGC0gNe4oaxcNKLw--

