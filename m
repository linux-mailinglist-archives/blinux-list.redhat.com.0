Return-Path: <blinux-list+bncBCW5NIVR6ABBBUPSTCVAMGQEEOSMCQQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id C62AE7E0F56
	for <lists+blinux-list@lfdr.de>; Sat,  4 Nov 2023 13:30:10 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41e16b279ffsf30640711cf.0
        for <lists+blinux-list@lfdr.de>; Sat, 04 Nov 2023 05:30:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1699101010; cv=pass;
        d=google.com; s=arc-20160816;
        b=JHtTZe4aaVLGWEN02+WlNedS79twfOvR3UN4ASL5aXySM5jPMgaMZIGZAgYW1twV7+
         +bEabAxOZuJSX06bjxphDvs4jDyguf+KWUlgrOWVLXEY6lXwOm4XexuvdOldIjH9uDjC
         oR6gR0G8rbvA1iFIwhxMzXab6i28S0FbEkleR0fmT+Orgcf+dNUo3NjnMkmU/SltoGaa
         Xgn9GjVsJscXcX1ft6KMZrijN+hWSPhqkcAHcXqaLcg2wTz2gIqXAExilp/tMO2lvqnp
         sR7I01mqRCpcBmnCt8guBe4wMZBd1UEPEm9+a+eKQI9hoNh9/hlwyEZ/GxI9ZxTFopWm
         mP0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=Al44QIVrVWTlo+uB3d3RxB7q7BLhXFTNa/yG3vJ6wxM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=h8NgEfbazyH3Vzwm6qrIfNYHhv4s1OIpGQbWGvTQggS7/keEiTEKbvHE9ZCM6h42w6
         JtV/V9WJGbRwhYxPdJATFYN3Jpf8z2KR9MtCFC9qxK47wo+7MMisiipvdxGLqmmNHTFy
         cd+yikfpc1Ybq+mUkMJqCk/vWGSoKMBb6I6F4Ex+aCX5S4RvGZwDfoJKnM3EqmVraf05
         al6xsx0wSfpFNjPySmOXWlB32I9GfWshraCrC3dvejbl31SBcGB7vlFzo4MqcT50dx4+
         7hCT+nD10Yc4k7XsYauo+ldqZ3+DLsHliYPDYKTkHQMT6OCGno1mepXin4e34hXQt7jt
         7Zkw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.221.47 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699101010; x=1699705810;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Al44QIVrVWTlo+uB3d3RxB7q7BLhXFTNa/yG3vJ6wxM=;
        b=PCQZkOGMKPlieSgSKfFs1s+h5FsivC8vDIV0hHcCs8Bxyer+DXAhfzaGGkfzHg95pV
         oravARXUknFGx8dVO5YdwgdU4vVbJ9iwPOPIHIc4lM9z+6p9Bo1IneqxDcXmIU4odcXJ
         0e6RqDD+GtlatU4T9Uz/7sjcbSQQ4OMfxWulerXpZpqyQCxvEqVgNkQUPs7Up91HIVqw
         9FErsLOvv11pTS9AvzrYckEuVcIdEua0ddtUj/Ajcq1ojfFn+Mj97soytuaVIhts2bC1
         oktlP1U0x1+u8hxrrWsO+tpg/hgnrLmsR5B99mIu7O6idHRUk7MyOgNT2/mt6Tapl9Zg
         cVGA==
X-Gm-Message-State: AOJu0YzvGJzxfOagb74s6pk8ih84hjcBw/p84g35NJMgCcZvFqfTXr6o
	RlmeWKrqKaf88URlnUeSHYXbxg==
X-Google-Smtp-Source: AGHT+IFe6Tv5vWFiqrzhcraINx4V+GMAXq4KkQDyiiIl1Xr30BukYly4QUzunN/JL2/QKlJbl8IpMg==
X-Received: by 2002:a05:622a:10f:b0:41c:e702:4df7 with SMTP id u15-20020a05622a010f00b0041ce7024df7mr29515109qtw.63.1699101009751;
        Sat, 04 Nov 2023 05:30:09 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:24c:b0:419:5434:d639 with SMTP id
 c12-20020a05622a024c00b004195434d639ls2476954qtx.0.-pod-prod-06-us; Sat, 04
 Nov 2023 05:30:09 -0700 (PDT)
X-Received: by 2002:a05:620a:8f87:b0:778:9911:105c with SMTP id ri7-20020a05620a8f8700b007789911105cmr18596986qkn.68.1699101009044;
        Sat, 04 Nov 2023 05:30:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1699101009; cv=none;
        d=google.com; s=arc-20160816;
        b=NMsXm8g4lITif80Ocj1TzjafRPOpMzk5//BZ49dBDH7HHPrMDqfJt+rLLv3yHII/93
         AS6R6wcqep1AW27vz/sTDcbMZh/3YDIBmIDwGtkFHziEklM7Fv7Jge/298JjXoga1LhT
         r3U/koKRnmOVq2oK//gVLBxkNWF2cqGnxcnlPVbvj8R3M3PAd916N8ho72xFakxVKpJ3
         8x72d/l9QBZuFKlIDHllxEkaqyBe/k/23/xssKppkehgIKBs0msDe/EVxylrvTVxHqS2
         pWTU9AMBNlzuYtzCLQMAGpfny2NrIWD+KRjh1NRoU5QXAwqsL46+zJZNn4FHBGdJCObZ
         K+bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=fxtdhk/K8wD/kkzqx6erKQ4OA6+rauTiywkuW2bSLyE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Yszmr3COJrcjTrgQez68489iWuR3dc5w6Be6lCaLP855n6XXrnAWfju+Ie7js5mJ4G
         ZvsdOu2ZDb1D+UpOzhz88beW0bBvzb2w39zMjmz0dVlXEi4/RhxEBiTv5yFZGmnhff7j
         uQmzT3espuE5JwYZe9kOdL4E7Bf17dkDma8mkGzwReb4wdCPMt5XFusvLRZtyUFx1/0Q
         OicR7+M5QfCXeVn/8xBGyVwWoTAgEvEEGeF1GfsoXJ/Hp+6eozbN5MkVeeNIRZXtsxeN
         S7ljsDd/gTTlUowlEBELGaVHNOyPavz9XIsebZdG4V1K5jTlD3blr+WGTa0KLakrDMn5
         RZLQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.221.47 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id bn3-20020a05620a2ac300b0077424168fa1si2949535qkb.629.2023.11.04.05.30.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Nov 2023 05:30:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.221.47 as permitted sender) client-ip=209.85.221.47;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-70-P_G95cPfPiig5SdTTUDgKw-1; Sat,
 04 Nov 2023 08:30:07 -0400
X-MC-Unique: P_G95cPfPiig5SdTTUDgKw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6CE4B3C00094
	for <blinux-list@gapps.redhat.com>; Sat,  4 Nov 2023 12:30:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 6968540C6EBF; Sat,  4 Nov 2023 12:30:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6214240C6EBC
	for <blinux-list@redhat.com>; Sat,  4 Nov 2023 12:30:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3E190821935
	for <blinux-list@redhat.com>; Sat,  4 Nov 2023 12:30:07 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-556-VM1xvkXXNJe9NneLsBUKKA-1; Sat, 04 Nov 2023 08:30:04 -0400
X-MC-Unique: VM1xvkXXNJe9NneLsBUKKA-1
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-32dff08bbdbso1910221f8f.2
        for <blinux-list@redhat.com>; Sat, 04 Nov 2023 05:30:04 -0700 (PDT)
X-Received: by 2002:a5d:568a:0:b0:32d:adda:e8cd with SMTP id f10-20020a5d568a000000b0032daddae8cdmr18964930wrv.22.1699101002798;
        Sat, 04 Nov 2023 05:30:02 -0700 (PDT)
Received: from [192.168.1.24] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id d5-20020adff2c5000000b0032da6f17ffdsm4312161wrp.38.2023.11.04.05.30.02
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Nov 2023 05:30:02 -0700 (PDT)
Message-ID: <fd258794-2bcb-4287-8278-cb74b583f683@gmail.com>
Date: Sat, 4 Nov 2023 13:30:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: How to setup Audacity Arch Linux
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative;
 boundary="------------sQePTAfF03s0v079GRtSEbAd"
Content-Language: en-US
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.221.47 as permitted
 sender) smtp.mailfrom=vlcekpavel93@gmail.com
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
--------------sQePTAfF03s0v079GRtSEbAd
Content-Type: text/plain; charset="UTF-8"; format=flowed

Hi,
I am unable to correctly setup Audacity. Arch Linux, Pipewire.

In preferences, first combobox with label guest computer is set to alsa, 
and can be chandeg to jack audio connection kit. Second combo box is set 
as Pipewire, I think it is for playing, can be changed to default or 
hdmi. Thirt I think for recording is set to pipewire and can be changed 
to default and alsa. What am I doing wrong? When I use 
gnome-sound-recorder for mic verification, all works as expected. I 
tried to switch to jack audio connection kit, I choosed my hdmi to play 
and my family controller (internal mic), but after recording, I get 
information about sound loss in selected regions.

Thanks,
Pavel

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------sQePTAfF03s0v079GRtSEbAd
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>
    </p>
    <div class="moz-text-flowed"
      style="font-family: -moz-fixed; font-size: 12px;" lang="x-unicode">Hi,
      <br>
      I am unable to correctly setup Audacity. Arch Linux, Pipewire.
      <br>
      <br>
      In preferences, first combobox with label guest computer is set to
      alsa, and can be chandeg to jack audio connection kit. Second
      combo box is set as Pipewire, I think it is for playing, can be
      changed to default or hdmi. Thirt I think for recording is set to
      pipewire and can be changed to default and alsa. What am I doing
      wrong? When I use gnome-sound-recorder for mic verification, all
      works as expected. I tried to switch to jack audio connection kit,
      I choosed my hdmi to play and my family controller (internal mic),
      but after recording, I get information about sound loss in
      selected regions.
      <br>
      <br>
      Thanks,
      <br>
      Pavel
      <br>
      <br>
    </div>
  </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------sQePTAfF03s0v079GRtSEbAd--

