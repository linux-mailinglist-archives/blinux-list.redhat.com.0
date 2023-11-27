Return-Path: <blinux-list+bncBCW5NIVR6ABBBROGSOVQMGQEO3OXOLY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mail.lfdr.de (Postfix) with ESMTPS id C62F27FA92A
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 19:43:18 +0100 (CET)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-1fa182dc04asf4094029fac.1
        for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 10:43:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701110597; cv=pass;
        d=google.com; s=arc-20160816;
        b=nxxwABpjnBEYw7opnF3Rb78B1e1F5BzdiFC4ryPvkpTd6DS32zh5PGCKTD0Z5LmJiN
         31EoPEE1gLwxf78Ori5ECg+K2HwNj1Q05otR5nIcOCWf5vAkQF6BafdOC6CB/zgcDVBk
         SWrW5dlID10gdb7Wodjx+hDmuLzq9NYVTLXFQl2qieVYcrMO1yanF1O7O6RS/DJFZLnG
         LXsxySKrJeU2mXBjo80dst2SX1WJndtDfKfb/YyBmZjUMAuTS8Y8o2wiEqrQxHKQMhc0
         3l8WGUHF//OZDzT3pI7qDnUeo/Pyocp1IfRFIcOiLY1mCr9eXfSPtaBqwehRXrGpK5K8
         rneA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=0rGbsKtxyhJkS0L3PUPg/emGjv2ichWCfJAeiQjXtX0=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=xEohXRwaqwYwZc+K1tVFJoemlOZEsvnqn9eA7f/h4p5sMbtHZmQw2EOXu4AF9S+RhB
         39P48ItxhzRNNuokhYorbC+SEWtPX1CGtXe5vAPKzeMeeEJq0CZ9Zk71baZuhNG5E6XA
         NzfIh45uSfmSG4ekcEKEMH2CCT4LBklLZxC2/xOBpLWG0tGysYEFju6Mw1L4N4pbL0YZ
         DB7JjkPMBffvpX4GSCXa0eWlS1TfQSIHeMf6r98RSCpZZFXIImp1aDCm+TuIAR/GNtgn
         za4VFSq27AkkMeuhsYtHeIAy+gFa7PsS5W+wI1wZPrl9JncCbgm5NpA8JKnGK223KTsi
         C3PA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.178 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701110597; x=1701715397;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0rGbsKtxyhJkS0L3PUPg/emGjv2ichWCfJAeiQjXtX0=;
        b=a24LNl5dmYoTf2ac9bYxZWfykzl2PaKw3bMbMlHw3EmI+0W4KTrdeeBBDGmHNOIX+W
         SjF8lfm+8GD54Eb4bJtsfNAtnmuuIJHwKrnDjlZ/B9I2J3myOvwvqGMFZjWBASmF5A/E
         ubbcFzRkl7L0aVOukkZzWH+L2lzlxhWMhtLMSiWrLEN9nAVplM+GKr/xL9XP2x9pPqjq
         otF+KwbAlXwpjB5JqBawKFbChQHRoC390UONGNoLy8qgWlAr+gAk6c3nKc2INvlO2LOu
         34BHpizKy+TFL0VL/VJJoxAq+cyKZGDlzlLUKGzKmqCKc9rLOlcY9FfD0n15ZQqJfnBC
         mxTQ==
X-Gm-Message-State: AOJu0Yw+qTBdhw3VbNqvIF7W/QGWE8iEujtL8v5/X5zZjdIjH2G+nDEK
	2mIREw44dlm/msrfsMPEgbwn8g==
X-Google-Smtp-Source: AGHT+IEgwrKB0PHjtPuBdNPxBNFn9/lCXcVMP3hdiQjKYbazt6WNrcVO/WRLJJouqvaVGzTqlDx1Yw==
X-Received: by 2002:a05:6870:6b09:b0:1ef:b591:5733 with SMTP id mt9-20020a0568706b0900b001efb5915733mr18197819oab.15.1701110597510;
        Mon, 27 Nov 2023 10:43:17 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:d4:b0:423:7c51:c731 with SMTP id
 p20-20020a05622a00d400b004237c51c731ls433838qtw.2.-pod-prod-05-us; Mon, 27
 Nov 2023 10:43:16 -0800 (PST)
X-Received: by 2002:a05:620a:8526:b0:77d:9053:26a5 with SMTP id pe38-20020a05620a852600b0077d905326a5mr8339527qkn.3.1701110596756;
        Mon, 27 Nov 2023 10:43:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701110596; cv=none;
        d=google.com; s=arc-20160816;
        b=hSp8iFnOGCG52XAGkcLM0BrBcMCUJFK6j4a6xhmDT3aUvFiRgnEmkBSLYzRXLqESzX
         1kIcNAA7MoG2iOrzEQQbQ+I9+4QDtQJjjouZsoV86V4VZHqrQwbyeNGf1FI50QOjp2z3
         V2EkQEOrf1eT38fn2PsOZTUhsBS2Rpm375r4Pu2LbL5DZNvrbulfHaMY+M6Asrvu6hDA
         gmBIcNXbhrnPLkC8NYW9oMwMb2iLdKdRuiCO6U9TUADIS/A4+UyifcdTBeVjlGV22Kal
         OF+1euVCYt801JIJuRYdQflak7XEQ3bstv8btvSA1C+Il+baxbwlxQRvqGFnCG82ZCNv
         GUlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=3vMI+ZWMFpNpaOkTc0K7rvNIq7jyPUw9FEDZhoIAIz8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=IkHm4GZfdj8/CEV2uopz4rxTSpNVp+wNdKA7OaW9hIWDNv431yaZGY07pqKO+l9XPL
         8UwViqLiivsl8uMVMduqivGqoCRhUE9dWTzBLCNal97JUvQWj68J24Tey+W/l9RrQW5E
         g97JMiNk48QEF0zLQUh0nGq4wIPt0JoYOv5Jq9d/+h97eCi5PBRbQly8GZuFLpruB3WX
         sP+wETAcuQ7aqp88ixlhlTKbDiq37jEtrFurNHdjN8qImPaN18eB8UisUNKEhq1E1k1y
         gB0Qu4mlpwB7zb4o4ILmYJGWxTsWbjKSK4aTeOsVXw6RrxFFrBzy+q++6QsWZMJMlMrL
         QEgQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.178 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id o23-20020a05620a111700b0077a02a275b5si9343534qkk.589.2023.11.27.10.43.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 10:43:16 -0800 (PST)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.178 as permitted sender) client-ip=209.85.208.178;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-532-83FbWDKUOF6h_vbu0cUKJg-1; Mon,
 27 Nov 2023 13:43:15 -0500
X-MC-Unique: 83FbWDKUOF6h_vbu0cUKJg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BB0A4381258D
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 18:43:14 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B7EAA2166B2D; Mon, 27 Nov 2023 18:43:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF78A2166B26
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 18:43:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8FD53828AC6
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 18:43:14 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-567-xMnXtZLgO4ytWMLAMQqoOw-2; Mon, 27 Nov 2023 13:43:12 -0500
X-MC-Unique: xMnXtZLgO4ytWMLAMQqoOw-2
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2c4fdf94666so56506781fa.2
        for <blinux-list@redhat.com>; Mon, 27 Nov 2023 10:43:11 -0800 (PST)
X-Received: by 2002:a2e:9911:0:b0:2c8:73b7:5a1c with SMTP id v17-20020a2e9911000000b002c873b75a1cmr9213246lji.3.1701110590908;
        Mon, 27 Nov 2023 10:43:10 -0800 (PST)
Received: from [192.168.1.24] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id c4-20020a05600c0a4400b003fefaf299b6sm14863848wmq.38.2023.11.27.10.43.09
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Nov 2023 10:43:09 -0800 (PST)
Message-ID: <39514632-8579-41ee-91dd-e14109077422@gmail.com>
Date: Mon, 27 Nov 2023 19:43:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: Orca not starting in lightdm
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.208.178 as permitted
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

Hi,

I don't know what happened, but I am unable to use Orca in Lightdm. I 
use the default lightdm-gtk-greeter and lightdm-gtk-greeter-settings app 
to manage settings. Orca is checked, run at startup is selected, 
/etc/lightdm/lightdm-gtk-greeter.conf says:

[greeter]
reader = orca
a11y-states = +reader
but Orca is silent and only braille shows screen not in text mode. So, 
what happened? Orca Master, Orca 45.1 not removed, I also changed the 
default greeter to lightdm-slick-greeter for testing purposes, because 
it has alt super s shortcut, but

greeter-session=lightdm-slick-greeter
is safely ignored and lightdm-gtk-greeter is loaded.

ArchLinux.

Thanks,

Pavel


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

