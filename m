Return-Path: <blinux-list+bncBCHY5TMQ6YERBEVNX2WQMGQEM2GSWSQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F59838C2C
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 11:36:04 +0100 (CET)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-598c035f671sf2854481eaf.2
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 02:36:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706006163; cv=pass;
        d=google.com; s=arc-20160816;
        b=zKZeTlytDCPK0+CcdqHoDKPAU1uvmstyHJtauiwVYAtO7H52U7eGQRQKybfcF9RTvE
         WYRbKEQfNy2PQyiqbqM86uX96sDZInQHvKobb/+s7Mp6J58GzIk+pH3x5Vyuz8g8/AVZ
         xCo6rd0skZvv0vXOJJppe6smWQcdYEU/AkJ0aOgZ5VOetuWPRC1l1DTMsIo5b9LVMrKl
         cOHAT0MfdCyb6wWF6YlrLZzv8VKrQF4ucWxoh6zzIz0iaDquAeBG8aAwTvSuHpVRvEhr
         XEo6vq9CHGPVvus0bXgDk4vahTBxK8EnQWHhmfFr2KJRGyTNEGAubDMEnnDvdQKdRjuJ
         sGXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=KodzIl8kIT2JArClfMSjaULgYj20MPxzpTwGxvnpWb8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=FKqtrk2hlC8v9y3pnj6sFxrlBkefm1Iwh9kGB35aNCKq+A9Te7HNSONpUHlnAkltUf
         S2wcYF1XsMl2XS0QOaTHgTwGl4skpk5tVVlOMR4l7M9hsUuEkv6RYxg1nVONu3V2SHmO
         IdtNzvbl0NUoU6Qztssff74xTzJGUI45Gu/0XBbtHD904NUGNHwAB72V6QQUWN2Ku4US
         t7/SeaPLWZb8055YeO272Taz35z8sulY4WL6mA88XlX0pl9MIdxjRqxVmaehSHuKOC9F
         7d5V5qBSIX6baHhdDax5pkwFS2SQdgImMN6F3cNesvZ8Kbbe6/aDL1KshI7WgQWrmOkS
         XZNQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706006163; x=1706610963;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KodzIl8kIT2JArClfMSjaULgYj20MPxzpTwGxvnpWb8=;
        b=XcYfQNRFaejOQ8wq9AfWRiH4v2MFoUIcv1Oc0bp0XUsJ7J/KPZk8vQzXMkSIhsRbWD
         8l79J9X6KhSaBbpRQJvxPxmduqrdgQKAq1X1ezkrf15zkBkwOxR6iiAfqnZhD9zHdDpk
         w81nMNbqHgtaNFkx1/Im3n7WceaxAhLOsHInN/M9uhPTt6v+d0vR6sWM4dPexHr2Qo6q
         KpGqADCWpf4nhCX8p8OpkiUxScZsa66vjQq2HEg6wfhxRisRKCgmFX+wHrj1nkMAbbPx
         n/1EMxw+SnVgg2OOrpLTX08Fis1jX12FC5H39Pu0D1BwSguSmiw+ObnSJspoYFynyg/w
         KawQ==
X-Gm-Message-State: AOJu0Yw0onX4uQdfmmfpJ81m9jZxW8HvkSjBi+Cm8XZWN5AKAzoanrfD
	/mpxkK/yrWfMjQavwsGlkVLVoVNk+sLEZwYnn8WEMhCTJPzB3LuYisccywVXaOg=
X-Google-Smtp-Source: AGHT+IHJ1lzttnQRakIQtv3ZfF92JNOwfG6KhoerhRdNPNlgeNXrn3XHPdthrCTnhSeJSVVppdIxNw==
X-Received: by 2002:a4a:b689:0:b0:598:739f:9947 with SMTP id v9-20020a4ab689000000b00598739f9947mr3272371ooo.7.1706006163229;
        Tue, 23 Jan 2024 02:36:03 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:902:0:b0:599:1da6:a4d8 with SMTP id 2-20020a4a0902000000b005991da6a4d8ls853131ooa.1.-pod-prod-03-us;
 Tue, 23 Jan 2024 02:36:02 -0800 (PST)
X-Received: by 2002:a05:6808:228a:b0:3bb:b700:e2e6 with SMTP id bo10-20020a056808228a00b003bbb700e2e6mr6275494oib.114.1706006162339;
        Tue, 23 Jan 2024 02:36:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706006162; cv=none;
        d=google.com; s=arc-20160816;
        b=lsh6ZL1YFDjurs+QNimqg4Hx4K4b4sC58MulyUYLhK+CtP9uSswFPpV5z/9y8mPKO5
         a59pFgyDa6gdWVlAOYxZ6ajLdXq5pyes9QVRz+2JP3Di7iNP6+suwwKQ/zLE17uReTKE
         KkoAy5izDvcynsdr/UzYSw4cijS/hD2C4GY3QZ1OJt4JMKJGg+0w+7UBJs58REIS/jvi
         5atYnLMlqFMeg+pO7scXDMfn18HH+Ilt6NZj0xp3uvAcwn+x7Meo/xcKfjuTrpU0kSc3
         t6jfzO6CzFWTwU4s/bn2Sk77N0QsB36W4VQWo5mo3IFUWCECbbfsz8Xlw8a7excpvwZC
         uZig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=nkEj/dhKsj64La1hVYFPUaVzE0teOKLWN8OquMjjyeM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=QZsKB8VH2pRwA8TDCDD6WEOtwIvhyqtx8vrml1RQcAUeconR6MzuuZ6oyHfMQV4mJa
         8k+RGwFhqeJzHDxjNfclaHuLqO90OS6fjVYBHgrLVzisnJqKkXX569UxRkgaecBXAoL3
         ++Qu7v2u4f6meM9PK+hnUz79Q5W8MYZn5pQp+lFPHmH1l3yw+JBX7RIljRRUUrg5MrhS
         /KTOmJo7ULlFv6+oQZtEqai5nBZeveIreehw7PDu4A77uoFZcklqFJAOEm2EDZoWkmFB
         PKksMMY3eQS1+dmFoQIBDzQrQnqrBdNzMdqs6YPkg4jdYUJrHe3M2KB+SkITWeI8SuH9
         4CRA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id v21-20020a05620a0f1500b0078321fc9bd9si8024541qkl.367.2024.01.23.02.36.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 02:36:02 -0800 (PST)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-286-B5vgcuyKM1-T5fa5jnzuJw-1; Tue,
 23 Jan 2024 05:35:59 -0500
X-MC-Unique: B5vgcuyKM1-T5fa5jnzuJw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A2402825BB8
	for <blinux-list@gapps.redhat.com>; Tue, 23 Jan 2024 10:35:59 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 261FE2166B5D; Tue, 23 Jan 2024 10:35:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E98C2166B35
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 10:35:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2D2DB42B3D
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 10:35:58 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-137-JHtNvQgFPba3LnpU_QWErw-1; Tue, 23 Jan 2024 05:35:54 -0500
X-MC-Unique: JHtNvQgFPba3LnpU_QWErw-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id A0FB43F858
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 12:25:59 +0200 (EET)
Message-ID: <7cdc128e-69b9-4f34-ad4b-bdf1185ccc1a@harrastenurkka.fi>
Date: Tue, 23 Jan 2024 12:24:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Linux e-readers do they exist?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
In-Reply-To: <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: harrastenurkka.fi
Content-Type: multipart/alternative;
 boundary="------------2BI47wYwC4NHU213nku4vKrN"
Content-Language: en-US
X-Original-Sender: elias.stahlberg@harrastenurkka.fi
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as
 permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Original-From: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Reply-To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
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
--------------2BI47wYwC4NHU213nku4vKrN
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Interesting, what kind of technical specs bt speak and bt speak pro
include what desktop environment and distro they use I couldn't find=20
anything on the manufacturer's website
technical specs

On 1/23/24 09:37, Nimer Jaber wrote:
> Hello,
>
> Yes, check out the BT Speak. https://www.blazietech.com/products
>
> On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen=20
> <klewellen@shellworld.net> wrote:
>
>     Hi all,
>     Let me spell out what I mean.
>     a portable Linux based in terms of being=C2=A0 open source device tha=
t can
>     manage at the very least text files.=C2=A0 Something easy to load fil=
es
>     into,
>     as well as if possible add an open source edition of speech synthesis=
?
>     Some work=C2=A0 being done=C2=A0 on dectalk if that resonates.
>     Does such a device exist?
>     Karen
>
>
>
>
> --=20
> Best,
>
> Nimer Jaber
>
> Check out and subscribe to BlindTechAdventures=20
> <https://www.youtube.com/blindtechadventures> in podcast audio form on=20
> YouTube for the latest happenings in tech.
>
> You can follow @nimerjaber on Twitter=20
> <https://www.twitter.com/nimerjaber> for the latest technology news.
>
> Thank you, and have a great day!
> --=20
> You received this message because you are subscribed to the Google=20
> Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send=20
> an email to blinux-list+unsubscribe@redhat.com.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--------------2BI47wYwC4NHU213nku4vKrN
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Interesting, what kind of technical specs bt speak and bt speak
      pro<br>
      include what desktop environment and distro they use I couldn't
      find anything on the manufacturer's website<br>
      technical specs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 1/23/24 09:37, Nimer Jaber wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
      <div dir=3D"ltr">Hello,
        <div><br>
        </div>
        <div>Yes, check out the BT Speak.=C2=A0<a
            href=3D"https://www.blazietech.com/products"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https:=
//www.blazietech.com/products</a></div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 22, 2024 at
          8:39=E2=80=AFPM Karen Lewellen &lt;<a
            href=3D"mailto:klewellen@shellworld.net"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">klewel=
len@shellworld.net</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi
          all,<br>
          Let me spell out what I mean.<br>
          a portable Linux based in terms of being=C2=A0 open source device
          that can <br>
          manage at the very least text files.=C2=A0 Something easy to load
          files into, <br>
          as well as if possible add an open source edition of speech
          synthesis?<br>
          Some work=C2=A0 being done=C2=A0 on dectalk if that resonates.<br=
>
          Does such a device exist?<br>
          Karen<br>
          <br>
          <br>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      <span class=3D"gmail_signature_prefix">-- </span><br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">Best,<br>
                        <br>
                        Nimer Jaber<br>
                        <br>
                      </div>
                      <div>Check out and subscribe to=C2=A0<a
href=3D"https://www.youtube.com/blindtechadventures" target=3D"_blank"
                          moz-do-not-send=3D"true">BlindTechAdventures</a>
                        in podcast audio form on YouTube for the latest
                        happenings in tech.</div>
                      <div dir=3D"ltr"><br>
                      </div>
                      <div dir=3D"ltr">You can <a
                          href=3D"https://www.twitter.com/nimerjaber"
                          target=3D"_blank" moz-do-not-send=3D"true">follow
                          @nimerjaber on Twitter</a> for the latest
                        technology news.<br>
                        <br>
                      </div>
                      <div dir=3D"ltr">Thank you, and have a great day!<br>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      -- <br>
      You received this message because you are subscribed to the Google
      Groups <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:blinux-list@=
redhat.com">"blinux-list@redhat.com"</a> group.<br>
      To unsubscribe from this group and stop receiving emails from it,
      send an email to <a
        href=3D"mailto:blinux-list+unsubscribe@redhat.com"
        moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">blinux-lis=
t+unsubscribe@redhat.com</a>.<br>
    </blockquote>
  </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;blinux-list@redhat.com&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--------------2BI47wYwC4NHU213nku4vKrN--

