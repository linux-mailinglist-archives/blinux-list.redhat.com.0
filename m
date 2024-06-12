Return-Path: <blinux-list+bncBCLPHQH4XEIRBIVYU2ZQMGQEH7AXRPQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id AA34B905318
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jun 2024 15:01:24 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-44051e6249asf55785451cf.2
        for <lists+blinux-list@lfdr.de>; Wed, 12 Jun 2024 06:01:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718197283; cv=pass;
        d=google.com; s=arc-20160816;
        b=eCMeeXICXAVt6CM8aLP42FNSQqg+nQ/rU5t2JabGFl1qpa9gxeUR0M06NVDlpR773l
         +YwRP8AxsQOdaExdDOnaihjnrpiPEDTquPL/s+me1IzVx+pVxZwvcShmpRiGBrng0QVQ
         3R/qzebhSxuF58OHZ8Fb6PKiLBSADEMrJ1ODdEBcqCv9mkX796tCU/UbmuIRb6zUNECo
         GlctS5YSfSXeh/WikbqXfeuC314B3lSybW+bjkoWO1D0dHTc7likQRk1PPPimPllP+tM
         0nZsoyjIVKXFvdONVdAncgLeSpT+pAQSY7r4aTQIm4AYHihEv53kdgK5yRnh9Z5BBV6b
         BGeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=cOLN3liHVx5+rp+0BMgiJrh1sckvp4mPaf14XjnlhZg=;
        fh=zKbJlk7/4YWY5SkzKclE8asSxBy3N8w2XAs3/Cgeiy4=;
        b=TX/ulPB4d3nsTGpllFBQOXuYtLaBWmc387aalFpZe6PYSVrpa+QYuCk8jDJFVNw499
         /MiLHNiRF+cR4rFg/maNF/OSFqvHzymWHjmnQDotJ3YGPee5bO/vwP+72yl9FCBl85uh
         6ldwbZSL2O2cihhjolVuCGWXNy6TUqPlTGLz6beu724F6jB0lo/4ArhyXoGQRzWTeVX6
         lKY0G4xkf5gTAUk8WqPkbNftfsob5a8M+ocX6UFHvxB5wRL5VS34ebrJM7jnXl3l6mmh
         1lDqgkgYukR6PhJB55jL/G9GpxeNOCvfahb3pgl/2nrqGR26dWY+JK49BIYkL7SnvsYz
         z3ZQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718197283; x=1718802083;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cOLN3liHVx5+rp+0BMgiJrh1sckvp4mPaf14XjnlhZg=;
        b=NAINqUYJELy0Vnh3sh+quZg14OUGGlWH57+6ebhm6IrioIsDQBppcY8XkXe57ZC1OJ
         SyfS0UCf/tgKbc/v946v3t4+N4Xf1ryg+iVyrf+asBQ52prC+7SzBNshV4ywIQg5aWJu
         NCB3B5lU7LKwqZZoyZ1NSl4W57VUBy262Wvm1yyxlReNcBTM6zpuDfu16HoUSfYUyZdo
         T8wMKJrT+f6znpaV7FqH0O58o5/5/O0GYDn+jB9E3l4ipv09Nv5KFvLUtkSTmH5xvUwI
         W2icUMly6LzmotMnvqfJT87cFbmGMT+inwDeMkf40e0aPaoL/Ne87JEkRG9+m9eWzPHI
         S7ww==
X-Forwarded-Encrypted: i=2; AJvYcCWOzoESjGxbWus+J3Ka4cOgSem89IeQfH+IjfWtZOBUayKq8GYLOdLyZJ1EQDi8/E9EquhHwUQPn7160sv9G++srVyAGVlPupEU
X-Gm-Message-State: AOJu0Yx25UNYgaiGVbielvyVbFaEIw8L+D42l9KfNjgxf4yO7WfZJP79
	ENPOaO6h3kaiEf4yJdie/I8K9U5Th74Q2JAsLQfTA+mLCnEtSMliypR5JuR0vfU=
X-Google-Smtp-Source: AGHT+IF9qU7BEzx4IeAY+00hY6cQBxgZd/jNgHr2Op+9ixOzZL84tiIpeGyOmbJVItXifwAtsGynzA==
X-Received: by 2002:a05:622a:2c9:b0:43a:f698:2b21 with SMTP id d75a77b69052e-4415ac0d1e6mr18215801cf.36.1718197282666;
        Wed, 12 Jun 2024 06:01:22 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d8b:0:b0:441:5568:9dea with SMTP id d75a77b69052e-4415568a1bals17099711cf.2.-pod-prod-06-us;
 Wed, 12 Jun 2024 06:01:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW9lmotI1nWmNzS22PVuNtp2qcnQCmHh9AyLSXSudxZCpizGbS7sIYUY+tw/KDEDSzBznmpMmtKPnHvhRJH+Ek1M9Qbjx+je+eaVvCv
X-Received: by 2002:a05:620a:28c2:b0:797:d3f7:3d48 with SMTP id af79cd13be357-797f6005d22mr178250285a.10.1718197278272;
        Wed, 12 Jun 2024 06:01:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718197278; cv=none;
        d=google.com; s=arc-20160816;
        b=gsoUUFMyPpKy5S8lA8KyoCZ4glOhfyEqfOdF+qfS7Vg0QnGrourONpzWn3ik+uIyQ3
         stEyV1OzRu0GmuOMGOoJ284M9IZvwGArCMjA8TjywBZNbY2R2LWRBtvggacqd9pkV9k5
         7yMKGsru1tW7SL3C9sPnEJ1ZdD//8AYGQbLOecURIPExbTiMSgTMSTwar/CkkXeMTSDw
         tCcLJ3zBXhJnIe4whfJcEkwa7K929g67UpuruqNc/n5UDbNn/l0FjdV+F8KKsyUnII8M
         MB+QvYWxqQFFCMeIN3gPtEEFsHvkgXq6ok7H/WzYBH4fy6/WsG5abnmv9mkEwA19pOpb
         b+sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=47C2mk14AUHVvIBSvJRGfCVuAzjsoQUaEETh3veckMc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=tDadU/3qTiC/JZoCmTn0OCVffo82C7rLZ474IwHheNq6VhocP90S9tGj5zbjD1Ph2Q
         XLit3t1b5w/5/4KgWjkPp7wbjXW7QSv+ZaoaWq2nrOhpKMAprNmuFI4GnaPZdAcrzJvh
         ieEe3iXxkk25hjSD4lGW3DL4CmiJLEiAOfqCRcHw0t3fgT9HAyHS2iqM8cV2AC6aSKL3
         zqQIAJfCVkP+0pAs7Dok2JH1eYJJQ5Q+WiLZLqSFAq9JHJJtpAR6pDGxLatgXvjQQfuw
         h1qcy+mP25bff0zFfMQQ0RJDlSKTtBsBwB/uxJvrDMnz8HpLkx1ykovdE1Yx/psfZRbw
         2PjQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-795eb92638bsi744760685a.216.2024.06.12.06.01.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 06:01:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-515-ZJ_ptY9VPqyB3FfeuaX1Pw-1; Wed,
 12 Jun 2024 09:01:16 -0400
X-MC-Unique: ZJ_ptY9VPqyB3FfeuaX1Pw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 871911955DB8
	for <blinux-list@gapps.redhat.com>; Wed, 12 Jun 2024 13:01:15 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7897019560AE; Wed, 12 Jun 2024 13:01:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 75FF419560AA
	for <blinux-list@redhat.com>; Wed, 12 Jun 2024 13:01:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E7A491954B0B
	for <blinux-list@redhat.com>; Wed, 12 Jun 2024 13:01:14 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-275-YLzjtllUNgeXWCCoRvgkMw-1; Wed,
 12 Jun 2024 09:01:11 -0400
X-MC-Unique: YLzjtllUNgeXWCCoRvgkMw-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 750EF32156
	for <blinux-list@redhat.com>; Wed, 12 Jun 2024 13:01:09 +0000 (UTC)
Message-ID: <8b60da97-1460-4177-bf50-f194ef51521c@jasonjgw.net>
Date: Wed, 12 Jun 2024 09:01:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: VS Code, Emacs with Emacspeak or something else for Python
 programming?
To: blinux-list@redhat.com
References: <B1FF2032-3261-442A-9576-46C4CB3CCBEA@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <B1FF2032-3261-442A-9576-46C4CB3CCBEA@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------SdY0GHt5Pk0U4X1FhQ4M0uR5"
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
--------------SdY0GHt5Pk0U4X1FhQ4M0uR5
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 11/6/24 23:59, Ryan Mann wrote:
> I turned on the screen reader support in VS Code and opened a Python
> file that I know has indentations in it.  When I up and down arrow
> through the file, Orca does not tell me the indentations.  Is there a
> way to get Orca to tell me this or should I use something else like
> Emacs with Emacspeak?

Did you try turning on the option in Orca Preferences -> Speech for 
speaking indentation and justification?

Emacspeak will do much more than announce indentation. For example, it 
will provide syntax highlighting, auditory icons, and a well designed 
spoken interface to Emacs in general. You can temporarily turn off Orca 
while Emacspeak is running.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------SdY0GHt5Pk0U4X1FhQ4M0uR5
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/6/24 23:59, Ryan Mann wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:B1FF2032-3261-442A-9576-46C4CB3CCBEA@gmail.com">
      <pre>I turned on the screen reader support in VS Code and opened a Python 
file that I know has indentations in it.  When I up and down arrow 
through the file, Orca does not tell me the indentations.  Is there a 
way to get Orca to tell me this or should I use something else like 
Emacs with Emacspeak?
</pre>
    </blockquote>
    <p>Did you try turning on the option in Orca Preferences -&gt;
      Speech for speaking indentation and justification?</p>
    <p>Emacspeak will do much more than announce indentation. For
      example, it will provide syntax highlighting, auditory icons, and
      a well designed spoken interface to Emacs in general. You can
      temporarily turn off Orca while Emacspeak is running.<br>
    </p>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------SdY0GHt5Pk0U4X1FhQ4M0uR5--

